import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class WithdrawalPage extends StatefulWidget {
  const WithdrawalPage({super.key});

  @override
  State<WithdrawalPage> createState() => _WithdrawalPageState();
}

class _WithdrawalPageState extends State<WithdrawalPage> {
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
                        'Withdrawal Method',
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
                                  Text('Bank',
                                      style: TextStyle(
                                          color: AppColors.headerTextColor,
                                          fontSize: 18)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'we make payments to any part of the world!',
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
                                  'https://lottie.host/b542cfd6-5fc6-48fb-8cb6-2d549347e5ed/EhiKgteQH9.json',
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
                            height: 15,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.32,
                            height: MediaQuery.of(context).size.height * 0.08,
                            child: TextFormField(
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
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: AppColors.mainColor),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Submit Request',
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
                        height: MediaQuery.of(context).size.height * .35,
                        image: const AssetImage('lib/assets/images/alt.png')),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
