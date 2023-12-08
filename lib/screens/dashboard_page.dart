import 'package:crypto_bomb/components/acc_summary.dart';
import 'package:crypto_bomb/components/price_plans.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:clipboard/clipboard.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cardTextColor.withOpacity(0.1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 40),
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
                    '  All systems are secured and running smoothly!',
                    style: TextStyle(
                        color: AppColors.headerTextColor,
                        fontSize: 17,
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 30),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AccSummary(
                                  imageUrl: 'lib/assets/images/dep.png',
                                  headText: 'Deposited',
                                  accBal: '\$0.00'),
                              AccSummary(
                                  imageUrl: 'lib/assets/images/briefcase.png',
                                  headText: 'Packages',
                                  accBal: '0')
                            ],
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AccSummary(
                                  imageUrl: 'lib/assets/images/line-chart.png',
                                  headText: 'Profit',
                                  accBal: '\$0.00'),
                              AccSummary(
                                  imageUrl: 'lib/assets/images/sand-clocks.png',
                                  headText: 'Active Packages',
                                  accBal: '0')
                            ],
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AccSummary(
                                  imageUrl: 'lib/assets/images/repeat.png',
                                  headText: 'Ref. Bonus',
                                  accBal: '\$0.00'),
                              AccSummary(
                                  imageUrl: 'lib/assets/images/coins (1).png',
                                  headText: 'Balance',
                                  accBal: '\$0.00')
                            ],
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Lottie.network(
                              'https://lottie.host/d9ee90db-5455-40c3-9b8c-cb6d273a3550/cmMFadmUPt.json',
                              repeat: true,
                              reverse: false,
                              animate: true,
                            ),
                          )
                        ]),
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
                height: 40,
              ),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PricePlans(headerText: 'Basic', planThemeColor: Colors.red.shade700, price: '\$5,000',),
                PricePlans(headerText: 'Standard', planThemeColor: Colors.blue.shade900, price: '\$10,000' ,),
                const PricePlans(headerText: 'Premium', planThemeColor: Colors.teal, price: '\$100,000')
              ],
             ),

             const SizedBox(height: 30,),

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
                  child:  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30,),
                        const Text('Refer Us & Earn Cash Prizes.', style: TextStyle(fontSize: 20, color: AppColors.headerTextColor, fontWeight: FontWeight.bold),),
                        const SizedBox(height: 30,),
                        const Text('Invite your friends with the link below.', style: TextStyle(fontSize: 15, color: AppColors.cardTextColor),),
                        const SizedBox(height: 30,),
                        
                        GestureDetector(
                            onTap: () {
                              FlutterClipboard.copy(
                                  'https://cryptoflex.com/jeff');
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: const Text(
                                    'wallet adress copied to clipboard!',
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
                                color: AppColors.cardTextColor.withOpacity(0.2),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'https://cryptoflex.com/jeff',
                                      style: TextStyle(
                                        color: AppColors.headerTextColor
                                            .withOpacity(0.7),
                                        fontSize: 14,
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
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
