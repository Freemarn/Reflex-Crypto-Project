import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto_bomb/components/acc_summary.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    final usersCollection = FirebaseFirestore.instance.collection('users');

    final userDocumentStream = usersCollection.doc().snapshots();
    return Scaffold(
      backgroundColor: AppColors.cardTextColor.withOpacity(0.2),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // const Text(
            //   'Dashboard',
            //   style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 18,
            //       fontWeight: FontWeight.bold),
            // ),

            // Row(
            //   children: [
            //     Text('Welcome, cryptoflex!')
            //   ],
            // ),

            StreamBuilder(
                stream: userDocumentStream,
                builder: (context, snapshot) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.78,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.cardTextColor.withOpacity(0.2),
                          spreadRadius: 7,
                          blurRadius: 3,
                        )
                      ],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AccSummary(
                                    imageUrl: 'lib/assets/images/dep.png',
                                    headText: 'Total Deposite',
                                    accBal: '\$0.00'),
                                AccSummary(
                                  imageUrl: 'lib/assets/images/add-group.png',
                                  headText: 'Total Users',
                                  accBal: snapshot.data.,
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AccSummary(
                                    imageUrl: 'lib/assets/images/share.png',
                                    headText: 'Pending Deposit(s)',
                                    accBal: '\$0.00'),
                                AccSummary(
                                    imageUrl:
                                        'lib/assets/images/delete-user.png',
                                    headText: 'Blocked Users',
                                    accBal: '0')
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AccSummary(
                                    imageUrl:
                                        'lib/assets/images/peer-to-peer.png',
                                    headText: 'Total Withdrawals',
                                    accBal: '\$0.00'),
                                AccSummary(
                                    imageUrl: 'lib/assets/images/rating.png',
                                    headText: 'Active Users',
                                    accBal: '2')
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AccSummary(
                                    imageUrl: 'lib/assets/images/exit.png',
                                    headText: 'Pending Withdrawals',
                                    accBal: '\$0.00'),
                                AccSummary(
                                    imageUrl: 'lib/assets/images/diagram.png',
                                    headText: 'Investment Plans',
                                    accBal: '3')
                              ],
                            ),
                          ]),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
