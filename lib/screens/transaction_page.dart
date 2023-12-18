import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto_bomb/components/announcement_card.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    final _collectionReference = _firestore.collection("transactions");
    final FirebaseAuth _auth = FirebaseAuth.instance;
                               
    return Scaffold(
        //backgroundColor: AppColors.sidebarTextColor.withOpacity(0.2),
        body: Padding(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.042,
              horizontal: MediaQuery.of(context).size.width * 0.014,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 26, top: 30),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.circle_rounded,
                                size: 13,
                                color: AppColors.mainColor,
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.007,
                              ),
                              const Text(
                                'Transaction History',
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.headerTextColor),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.06),

                        StreamBuilder(
                            stream: _collectionReference.snapshots(),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                return Text("Error: ${snapshot.error}");
                              }

                              if (!snapshot.hasData) {
                                return const Center(
                                    child: CircularProgressIndicator());
                              }
                              
                              final documents = snapshot.data!.docs.where((doc) => doc["uid"] == _auth.currentUser?.uid);

                              final announcements = documents.map((document) {
                                return AnnouncementCard(
                                  message: document["message"],
                                );
                              }).toList();

                              return ListView.builder(
                                itemCount: announcements.length,
                                  itemBuilder: (context, index) {
                                return announcements[index];
                              });
                            }),

                        // const AnnouncementCard(),
                        // const AnnouncementCard(),
                        // const AnnouncementCard(),
                        // const AnnouncementCard(),
                        // const AnnouncementCard(),
                        // const AnnouncementCard(),
                        // const AnnouncementCard(),
                        // const AnnouncementCard(),
                        // const AnnouncementCard(),
                        // const AnnouncementCard(),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.06),
                        Center(
                            child: Text(
                          'No more Announcements',
                          style: TextStyle(
                              fontSize: 23,
                              color:
                                  AppColors.sidebarTextColor.withOpacity(0.2)),
                        )),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.07)
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
