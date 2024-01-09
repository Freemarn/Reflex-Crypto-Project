import 'dart:async';

import 'package:crypto_bomb/components/page1.dart';
import 'package:crypto_bomb/components/page2.dart';
import 'package:crypto_bomb/components/page3.dart';
import 'package:crypto_bomb/components/page4.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class FooterDesktop extends StatefulWidget {
  const FooterDesktop({super.key});

  @override
  State<FooterDesktop> createState() => _FooterDesktopState();
}

class _FooterDesktopState extends State<FooterDesktop> {
  int _currpage = 0;
  final pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_currpage < 3) {
        _currpage++;
      } else {
        _currpage = 0;
      }

      pageController.animateToPage(_currpage,
          duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
    });
    
  }

  @override
    void dispose() {
      super.dispose();
      pageController.dispose();
    }

    onPageChanged(int index) {
      setState(() {
        _currpage = index;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      decoration: const BoxDecoration(
        color: AppColors.headerTextColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          const Text(
            'Our Partners',
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.13,
            child: Container(
              child: PageView(
                controller: pageController,
                onPageChanged: onPageChanged,
                scrollDirection: Axis.horizontal,
                children: const [PageOne(), PageTwo(), PageThree(), PageFour()],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        'Evian',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Options',
                        style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    'Take control of your financial security and\nstreamline your investments\nwith ease.',
                    style: TextStyle(
                        color: AppColors.cardTextColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 15,
                        child: Icon(
                          Icons.facebook_outlined,
                          color: AppColors.headerTextColor,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.008,
                      ),
                      const CircleAvatar(
                        radius: 15,
                        child: Icon(
                          Icons.wechat_outlined,
                          color: AppColors.headerTextColor,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.008,
                      ),
                      const CircleAvatar(
                        radius: 15,
                        child: Icon(
                          Icons.discord_outlined,
                          color: AppColors.headerTextColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Product',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'Wallet',
                      style: TextStyle(
                          color: AppColors.cardTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'Market',
                      style: TextStyle(
                          color: AppColors.cardTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'NFT Tools',
                      style: TextStyle(
                          color: AppColors.cardTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'Toolkit',
                      style: TextStyle(
                          color: AppColors.cardTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Developer',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'Documentation',
                      style: TextStyle(
                          color: AppColors.cardTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'API Reference',
                      style: TextStyle(
                          color: Color.fromRGBO(152, 162, 179, 1),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'API Status',
                      style: TextStyle(
                          color: AppColors.cardTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'Support',
                      style: TextStyle(
                          color: AppColors.cardTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Company',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'Home',
                      style: TextStyle(
                          color: AppColors.cardTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'About Us',
                      style: TextStyle(
                          color: AppColors.cardTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'FAQ\'s',
                      style: TextStyle(
                          color: AppColors.cardTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'Contact Us',
                      style: TextStyle(
                          color: AppColors.cardTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Contact',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'Sales',
                      style: TextStyle(
                          color: AppColors.cardTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'Press',
                      style: TextStyle(
                          color: AppColors.cardTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'Support',
                      style: TextStyle(
                          color: AppColors.cardTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'Team',
                      style: TextStyle(
                          color: AppColors.cardTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ]),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.14,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.001,
            width: MediaQuery.of(context).size.width * 0.87,
            color: AppColors.cardTextColor,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.065,
            ),
            const Icon(
              Icons.copyright_outlined,
              size: 12,
              color: AppColors.cardTextColor,
            ),
            const Text(
              ' 2023 Crypto',
              style: TextStyle(
                  color: AppColors.cardTextColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
            const Text(
              'Flex.',
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
            const Text(
              'All rights reserved',
              style: TextStyle(
                  color: AppColors.cardTextColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
            ),
            Row(children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              const Text(
                'Terms of Service   ',
                style: TextStyle(
                    color: AppColors.cardTextColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              ),
              const Text(
                'Policy service   ',
                style: TextStyle(
                    color: AppColors.cardTextColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              ),
              const Text(
                'Cookie policy',
                style: TextStyle(
                    color: AppColors.cardTextColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              )
            ])
          ]),
        ],
      ),
    );
  }
}
