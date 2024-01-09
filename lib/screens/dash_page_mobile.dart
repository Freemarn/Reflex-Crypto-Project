import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto_bomb/components/acc_summary.dart';
import 'package:crypto_bomb/components/price_plans.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:clipboard/clipboard.dart';

class DashPageMobile extends StatelessWidget {
  static const String routeName = "dashboard";
  const DashPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;

    if (user == null) {
      return const Center(child: Text('No user logged in'));
    }
    final usersCollection = FirebaseFirestore.instance.collection('users');

    final userDocumentStream = usersCollection.doc(user.uid).snapshots();

    return Scaffold(
      backgroundColor: AppColors.cardTextColor.withOpacity(0.1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: AppColors.mainColor,
                    size: 16,
                  ),
                  Text(
                    '  All systems are secured and\n  running smoothly!',
                    style: TextStyle(
                        color: AppColors.headerTextColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Container(
                  height: 670,
                  width: 400,
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 30,
                    ),
                    child: StreamBuilder<DocumentSnapshot>(
                      stream: userDocumentStream,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                        if (snapshot.hasError) {
                          return Center(child: Text(snapshot.error.toString()));
                        }

                        if (!snapshot.hasData) {
                          return const Center(
                              child: Text('No user data found'));
                        }
                        final userDocument = snapshot.data!;

                        final deposited = userDocument['deposited'];
                        final profit = userDocument['profit'];
                        final packages = userDocument['packages'];
                        final activePackages = userDocument['activePackages'];
                        final refBonus = userDocument['refBonus'];
                        final balance = userDocument['balance'];

                        return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AccSummary(
                                    imageUrl: 'lib/assets/images/dep.png',
                                    headText: 'Deposited',
                                    accBal: '\$$deposited',
                                  ),
                                  AccSummary(
                                      imageUrl:
                                          'lib/assets/images/briefcase.png',
                                      headText: 'Packages',
                                      accBal: packages)
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AccSummary(
                                      imageUrl:
                                          'lib/assets/images/line-chart.png',
                                      headText: 'Profit',
                                      accBal: '\$$profit'),
                                  AccSummary(
                                      imageUrl:
                                          'lib/assets/images/sand-clocks.png',
                                      headText: 'Active Packages',
                                      accBal: activePackages)
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AccSummary(
                                      imageUrl: 'lib/assets/images/repeat.png',
                                      headText: 'Ref. Bonus',
                                      accBal: '\$$refBonus'),
                                  AccSummary(
                                      imageUrl:
                                          'lib/assets/images/coins (1).png',
                                      headText: 'Balance',
                                      accBal: '\$$balance')
                                ],
                              ),
                              Container(
                                alignment: Alignment.center,
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                child: Lottie.network(
                                  'https://lottie.host/d9ee90db-5455-40c3-9b8c-cb6d273a3550/cmMFadmUPt.json',
                                  repeat: true,
                                  reverse: false,
                                  animate: true,
                                ),
                              )
                            ]);
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: AppColors.mainColor,
                    size: 16,
                  ),
                  Text(
                    '  Explore Our plans.',
                    style: TextStyle(
                        color: AppColors.headerTextColor,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PricePlans(
                    tOne: 'Max Duration: 6months',
                    tTwo: 'Min Duration: 3months',
                    tThree: 'Gift Bonus: \$100',
                    headerText: 'Basic',
                    planThemeColor: Colors.red.shade700,
                    price: '\$5,000',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  PricePlans(
                    tOne: 'Max Duration: 6months',
                    tTwo: 'Min Duration: 3months',
                    tThree: 'Gift Bonus: \$100',
                    headerText: 'Standard',
                    planThemeColor: Colors.blue.shade900,
                    price: '\$10,000',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const PricePlans(
                      tOne: 'Max Duration: 6months',
                      tTwo: 'Min Duration: 3months',
                      tThree: 'Gift Bonus: \$100',
                      headerText: 'Premium',
                      planThemeColor: Colors.teal,
                      price: '\$100,000')
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.73,
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Refer Us & Earn Cash Prizes.',
                            style: TextStyle(
                                fontSize: 18,
                                color: AppColors.headerTextColor,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Invite your friends with the link below.',
                            style: TextStyle(
                                fontSize: 13, color: AppColors.cardTextColor),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              FlutterClipboard.copy(
                                'https://Evianoptions.com/xyz',
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: const Text(
                                    'wallet adress copied to clipboard!',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor:
                                      Colors.lightGreen.withOpacity(0.5),
                                  dismissDirection: DismissDirection.vertical,
                                  // duration: Durations.medium2,
                                ),
                              );
                            },
                            child: Container(
                              height: 45,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.cardTextColor.withOpacity(0.2),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'https://Evianoptions.com/xyz',
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
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
