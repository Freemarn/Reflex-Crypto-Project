import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:crypto_bomb/utilis/app_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';

class WithdrawMobile extends StatefulWidget {
  const WithdrawMobile({super.key});

  @override
  State<WithdrawMobile> createState() => _WithdrawMobileState();
}

class _WithdrawMobileState extends State<WithdrawMobile> {
  String amount = "";

  String withdrawalMethod = "";

  final TextEditingController _editingController = TextEditingController();

  Future<void> _withdrawal() async {
    if (amount.isEmpty || withdrawalMethod.isEmpty) return;
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
          FirebaseFirestore.instance.collection('withdrawal');
      await usersCollection.add({
        "uid": auth.currentUser!.uid,
        'amount': amount,
        'fullname': auth.currentUser!.displayName,
        'withdrawalMethod': withdrawalMethod,
      });
      await recordDepositTransactions();
      Get.snackbar("Withdrawal", "Withdrawal successfull");
      _editingController.clear();

      EasyLoading.dismiss(); // hide loading indicator
    } on FirebaseAuthException catch (e) {
      EasyLoading.dismiss();
      showErrorDialog(context, e.message ?? "", 'Somrthing went wrong...');
      // Handle Firebase authentication errors
      print("Error creating withdrawal: $e");
    } catch (e) {
      EasyLoading.dismiss();
      showErrorDialog(context, "Transaction failed", 'Somrthing went wrong...');
      // Handle other errors
      print("Error creating withdrawal: $e");
    }
  }

  Future<void> recordDepositTransactions() async {
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
            "You just withdraw $amount\$ into your dashboard, contact your investment manager for more informatioon,\nthank you for choosing EvianOptions.",
        "time": DateTime.now().toIso8601String(),
      });
      _editingController.clear();
    } on FirebaseAuthException catch (e) {
      // Handle Firebase authentication errors
      print("Error in transactions: $e");
    } catch (e) {
      // Handle other errors
      print("Error creating transaction: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cardTextColor.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 850,
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
                      
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Withdrawal Method',
                            style: TextStyle(
                                color: AppColors.headerTextColor, fontSize: 16),
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
                                fontSize: 12, color: AppColors.cardTextColor),
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
                                        Text('Bank',
                                            style: TextStyle(
                                                color:
                                                    AppColors.headerTextColor,
                                                fontSize: 18)),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'we make payments to any\npart of the world!',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: AppColors.cardTextColor),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                      child: Lottie.network(
                                        'https://lottie.host/b542cfd6-5fc6-48fb-8cb6-2d549347e5ed/EhiKgteQH9.json',
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
                              width: MediaQuery.of(context).size.width * 0.32,
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: TextFormField(
                                onChanged: (value) => amount = value,
                                controller: _editingController,
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            width: 2,
                                            color:
                                                AppColors.fillAndBorderColor)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            width: 2,
                                            color:
                                                AppColors.fillAndBorderColor)),
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
                              height: 15,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.32,
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: TextFormField(
                                onChanged: (value) => withdrawalMethod = value,
                                onFieldSubmitted: (value) async {
                                  withdrawalMethod = value;
                                  await _withdrawal();
                                },
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            width: 2,
                                            color:
                                                AppColors.fillAndBorderColor)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            width: 2,
                                            color:
                                                AppColors.fillAndBorderColor)),
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'Enter payment method',
                                    hintStyle: const TextStyle(
                                      color: AppColors.cardTextColor,
                                      fontSize: 12,
                                    ),
                                    suffixIcon: const Icon(
                                      Icons.paypal,
                                      color: AppColors.iconColor,
                                    )),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Container(
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
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                            height: MediaQuery.of(context).size.height * .32,
                            image:
                                const AssetImage('lib/assets/images/alt.png')),
                      ],
                    ),
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
