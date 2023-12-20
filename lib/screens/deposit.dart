import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:crypto_bomb/utilis/app_dialog.dart';
import 'package:crypto_bomb/utilis/upload_file.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:path/path.dart';
import 'package:image_picker_web/image_picker_web.dart';


class DepositPage extends StatefulWidget {
  const DepositPage({super.key});

  @override
  State<DepositPage> createState() => _DepositPageState();
}

class _DepositPageState extends State<DepositPage> {
  List<PlatformFile>? _selectedFiles;

  String amount = "";
  String address = "bcqfjj2334kkvvkfvfkjf855848054vjvmvmfjfkgkfkfkdkd888839";
  String receipt = "";

  final TextEditingController _editingController = TextEditingController();

  Future<void> deposit() async {
    if (amount.isEmpty) return;
    try {
      // Initialize Firebase Auth instance
      final FirebaseAuth auth = FirebaseAuth.instance;

       // Upload receipt to firebase
        final filePath = _selectedFiles?.first.path
          if (filePath == null) throw "Upload receipt";
    
        final fileBytes = await File(filePath).readAsBytes();

      final url = await uploadFileWithLoadingDialog(
          context, fileBytes , receipt);
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
      await recordDepositTransactions();
      Get.snackbar("Deposit", "Deposit successfull");
      _editingController.clear();
    } on FirebaseAuthException catch (e) {
      // Handle Firebase authentication errors
      print("Error creating user: $e");
    } catch (e) {
      // Handle other errors
Get.snackbar("Deposit", "Deposit Failed");
      print("Error creating user: $e");
    }
  }

  Future<void> recordDepositTransactions() async {
    if (amount.isEmpty) return;
    try {
      EasyLoading.show(
        status: 'Processing...',
        maskType: EasyLoadingMaskType.black,
        indicator: const Center(child: CircularProgressIndicator()),
      );

      // Initialize Firebase Auth instance
      final FirebaseAuth auth = FirebaseAuth.instance;

     

      // Create a new document for the user in the Firestore collection
      final CollectionReference usersCollection =
          FirebaseFirestore.instance.collection('transactions');
      await usersCollection.add({
        "uid": auth.currentUser!.uid,
        'message':
            "You just deposited $amount\$ into your dashboard, contact your investment manager for more informatioon,\nthank you for choosing cryptoflex.",
        "time": DateTime.now().toIso8601String(),
      });
      _editingController.clear();
      EasyLoading.dismiss();
    } on FirebaseAuthException catch (e) {
      EasyLoading.dismiss();
      // ignore: use_build_context_synchronously
      showErrorDialog(context, e.message ?? "");
      // Handle Firebase authentication errors
      print("Error recording transaction: $e");
    } catch (e) {
      EasyLoading.dismiss();
      showErrorDialog(context, "Transaction failed");
      // Handle other errors
      print("Error creating transaction: $e");
    }
  }

  Future<void> _pickFiles() async {
  final picker = ImagePickerWeb();
  final pickedFile = await picker.getImageAsFile();

  if (pickedFile == null) {
    return null; // User cancelled or no file selected
  }

  // Check file type (optional)
  final extension = basename(pickedFile.path).split('.').last.toLowerCase();
  if (!['jpg', 'jpeg', 'png', 'pdf'].contains(extension)) {
    throw Exception('Invalid file type. Only images and PDFs allowed.');
  }

  // Convert pickedFile to Uint8List
  final fileBytes = await pickedFile.readAsBytes();


   _selectedFiles = fileBytes;
    receipt = pickedFile.name ;
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cardTextColor.withOpacity(0.2),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.83,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Payment Method',
                        style: TextStyle(
                            color: AppColors.headerTextColor, fontSize: 16),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                      const Icon(
                        Icons.lock,
                        size: 15,
                        color: AppColors.cardTextColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Secure Server',
                        style: TextStyle(
                            fontSize: 12, color: AppColors.cardTextColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.63,
                    width: MediaQuery.of(context).size.width * 0.37,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.cardTextColor.withOpacity(0.2))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 7,
                                child: Icon(
                                  Icons.circle_rounded,
                                  size: 10,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.currency_bitcoin_rounded,
                                        color: Colors.amber,
                                        size: 30,
                                      ),
                                      Text('itcoin',
                                          style: TextStyle(
                                              color: AppColors.headerTextColor,
                                              fontSize: 18)),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Safe crypto transfer, discover seamless payments!',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.cardTextColor),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                child: Lottie.network(
                                  'https://lottie.host/5772f2eb-f18a-4bae-b18c-4516156337bc/AzgrQKC4YC.json',
                                  repeat: true,
                                  reverse: false,
                                  animate: true,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.32,
                            height: MediaQuery.of(context).size.height * 0.08,
                            child: TextFormField(
                              textInputAction: TextInputAction.done,
                              onChanged: (value) => amount = value,
                              controller: _editingController,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                          width: 2,
                                          color: AppColors.fillAndBorderColor)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                          width: 2,
                                          color: AppColors.fillAndBorderColor)),
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
                                  'bcqfjj2334kkvvkfvfkjf855848054vjvmvmfjfkgkfkfkdkd888839');
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: const Text(
                                    'Text copied to clipboard!',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor:
                                      Colors.lightGreen.withOpacity(0.5),
                                  dismissDirection: DismissDirection.vertical,
                                  duration: Durations.medium2,
                                ),
                              );
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.32,
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
                                      'bcqfjj2334kkvvkfvfkjf855848054vjvmvmfjfkgkfkfkdkd888839',
                                      style: TextStyle(
                                        color: AppColors.headerTextColor
                                            .withOpacity(0.7),
                                        fontSize: 12,
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
                                  fontSize: 12, color: AppColors.cardTextColor),
                            ),
                          ),
                          const SizedBox(height: 10),
                          if (_selectedFiles != null)
                            Row(
                              children: _selectedFiles!.map((file) {
                                return Text(
                                  'File Name: ${file.name} & File Size: ${file.size} bytes',
                                  style: const TextStyle(
                                      fontSize: 12,
                                      color: AppColors.cardTextColor),
                                );
                              }).toList(),
                            ),
                          const SizedBox(height: 15),
                          InkWell(
                            onTap: () async {
                              await deposit();
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.1,
                              height: MediaQuery.of(context).size.height * 0.05,
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
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Column(
                children: [
                  Image(
                      height: MediaQuery.of(context).size.height * .7,
                      image:
                          const AssetImage('lib/assets/images/very bit.png')),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
