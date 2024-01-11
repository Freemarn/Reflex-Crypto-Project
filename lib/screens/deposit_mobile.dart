import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:crypto_bomb/utilis/app_dialog.dart';
import 'package:crypto_bomb/utilis/upload_file.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

class DepositMobile extends StatefulWidget {
  const DepositMobile({super.key});

  @override
  State<DepositMobile> createState() => _DepositMobileState();
}

class _DepositMobileState extends State<DepositMobile> {
  File? _selectedFiles;

  String amount = "";
  String address = "1Lbcfr7sAHTD9CgdQo3HTMTkV8LK4ZnX71";
  String receipt = "";

  final TextEditingController _editingController = TextEditingController();

  Future<void> deposit(context) async {
    if (amount.isEmpty) return;
    try {
      // Initialize Firebase Auth instance
      final FirebaseAuth auth = FirebaseAuth.instance;

      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(child: CircularProgressIndicator()),
      );

      // Upload receipt to firebase
      //final filePath = _selectedFiles?.first.path;
      if (_selectedFiles == null) throw "Upload receipt";

      //final fileBytes = await File(filePath).readAsBytes();

      final url =
          await uploadFileWithLoadingDialog(context, _selectedFiles!, receipt);
      if (url.isEmpty) return;

      // Create a new document for the user in the Firestore collection
      final CollectionReference usersCollection =
          FirebaseFirestore.instance.collection('deposit');
      await usersCollection.add({
        'amount': amount,
        'fullname': auth.currentUser!.displayName,
        'address': address,
        'receipt': url,
      });
      await recordDepositTransactions(context);
      Navigator.pop(context);
      Get.snackbar("Deposit", "Deposit successfull");
      _editingController.clear();
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      // Handle Firebase authentication errors
      print("Error creating user: $e");
    } catch (e) {
      Navigator.pop(context);
      // Handle other errors
      Get.snackbar("Deposit", "Deposit Failed");
      print("Error creating user: $e");
    }
  }

  Future<void> recordDepositTransactions(context) async {
    if (amount.isEmpty) return;
    try {
      // Initialize Firebase Auth instance
      final FirebaseAuth auth = FirebaseAuth.instance;

      // Create a new document for the user in the Firestore collection
      final CollectionReference usersCollection =
          FirebaseFirestore.instance.collection('transactions');
      await usersCollection.add({
        "uid": auth.currentUser!.uid,
        'message':
            "You just deposited $amount\$ into your dashboard, contact your investment manager for more informatioon,\nthank you for choosing EvianOptions.",
        "time": DateTime.now().toIso8601String(),
      });
      _editingController.clear();
      // Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // Navigator.pop(context);
      // ignore: use_build_context_synchronously
      showErrorDialog(context as BuildContext, e.message ?? "", '');
      // Handle Firebase authentication errors
      print("Error recording transaction: $e");
    } catch (e) {
      // Navigator.pop(context);
      showErrorDialog(context as BuildContext, "Error", "Transaction failed");
      // Handle other errors
      print("Error creating transaction: $e");
    }
  }

  Future<void> _pickFiles() async {
    final file = await ImagePicker.platform
        .getImageFromSource(source: ImageSource.gallery);

    if (file == null) {
      return; // User cancelled or no file selected
    }

    // Check file type (optional)
    // final extension = basename(pickedFile.path).split('.').last.toLowerCase();
    // if (!['jpg', 'jpeg', 'png', 'pdf'].contains(extension)) {
    //   throw Exception('Invalid file type. Only images and PDFs allowed.');
    //}

    // Convert pickedFile to Uint8List
    //final fileBytes = await pickedFile!.readAsBytes();
    final path = file.path;
    // if (path == null) return;

    _selectedFiles = File(path);
    receipt = file.name;

    setState(() {});
  }

// Future<String> getBaseNameFromUint8List(Uint8List fileBytes) async {
//   // Create a temporary file (replace with a suitable path for your app)
//   final tempFile = File('/tmp/temp_file.tmp'); await tempFile.writeAsBytes(fileBytes);
//   // Get the base name from the file path
//   final base = basename(tempFile.path);
//   // Print or use the base name print('Base name: $basename');
//   String name = base ;
//   // Delete the temporary file
//   await tempFile.delete();
//   return name;
//    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cardTextColor.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 870,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Payment Method',
                                style: TextStyle(
                                    color: AppColors.headerTextColor,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Icons.lock,
                                size: 15,
                                color: AppColors.cardTextColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Secure Server',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.cardTextColor),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    const Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 7,
                                          child: Icon(
                                            Icons.circle_rounded,
                                            size: 10,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons
                                                      .currency_bitcoin_rounded,
                                                  color: Colors.amber,
                                                  size: 30,
                                                ),
                                                Text('itcoin',
                                                    style: TextStyle(
                                                        color: AppColors
                                                            .headerTextColor,
                                                        fontSize: 18)),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Safe crypto transfer, discover\nseamless payments!',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color:
                                                      AppColors.cardTextColor),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.2,
                                          child: Lottie.network(
                                            'https://lottie.host/5772f2eb-f18a-4bae-b18c-4516156337bc/AzgrQKC4YC.json',
                                            repeat: true,
                                            reverse: false,
                                            animate: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.32,
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                  child: TextFormField(
                                    textInputAction: TextInputAction.done,
                                    onChanged: (value) => amount = value,
                                    controller: _editingController,
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                                width: 2,
                                                color: AppColors
                                                    .fillAndBorderColor)),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                                width: 2,
                                                color: AppColors
                                                    .fillAndBorderColor)),
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: 'Enter amount \$',
                                        hintStyle: const TextStyle(
                                          color: AppColors.cardTextColor,
                                          fontSize: 12,
                                        ),
                                        suffixIcon: const Icon(
                                          Icons.credit_score,
                                          color: AppColors.iconColor,
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    FlutterClipboard.copy(
                                        '1Lbcfr7sAHTD9CgdQo3HTMTkV8LK4ZnX71');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: const Text(
                                          'Text copied to clipboard!',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        backgroundColor:
                                            Colors.lightGreen.withOpacity(0.5),
                                        dismissDirection:
                                            DismissDirection.vertical,
                                        // duration: Durations.medium2,
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 250,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: AppColors.cardTextColor
                                                .withOpacity(0.2),
                                            width: 1)),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            '1Lbcfr7sAHTD9CgdQo3HTMTkV8LK4ZnX71',
                                            style: TextStyle(
                                              color: AppColors.headerTextColor
                                                  .withOpacity(0.7),
                                              fontSize: 9,
                                            ),
                                          ),
                                          const SizedBox(width: 20),
                                          Icon(
                                            Icons.copy,
                                            color: AppColors.headerTextColor
                                                .withOpacity(0.7),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),
                                ElevatedButton(
                                  onPressed: _pickFiles,
                                  child: const Text(
                                    'Upload Receipt',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.cardTextColor),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                if (_selectedFiles != null)
                                  Text(
                                    'File Name: $receipt ',
                                    // & File Size: ${_selectedFiles?.length} bytes
                                    style: const TextStyle(
                                        fontSize: 12,
                                        color: AppColors.cardTextColor),
                                  ),
                                const SizedBox(height: 15),
                                InkWell(
                                  onTap: () async {
                                    await deposit(context);
                                  },
                                  child: Container(
                                    width: 100,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColors.mainColor),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'Submit',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image(
                              width: MediaQuery.of(context).size.height * .5,
                              image: const AssetImage(
                                  'lib/assets/images/very bit.png')),
                        ],
                      )
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
