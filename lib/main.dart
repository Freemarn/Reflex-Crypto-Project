import 'dart:async';

import 'package:crypto_bomb/components/benfits_card.dart';
import 'package:crypto_bomb/components/container_text.dart';
import 'package:crypto_bomb/components/liveupdate_card.dart';
import 'package:crypto_bomb/components/page1.dart';
import 'package:crypto_bomb/components/page2.dart';
import 'package:crypto_bomb/components/page3.dart';
import 'package:crypto_bomb/components/page4.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';
import "package:flutter_animate/flutter_animate.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
    return Scaffold(
        //backgroundColor: Colors.indigo.shade900,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 65),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.004,
                    ),
                    const Text(
                      'crypto',
                      style: TextStyle(
                          color: AppColors.headerTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Flex',
                      style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.09,
                    ),
                    const Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 13, color: AppColors.cardTextColor),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    const Text(
                      'About Us',
                      style: TextStyle(
                          fontSize: 13, color: AppColors.cardTextColor),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    const Text(
                      'FAQs',
                      style: TextStyle(
                          fontSize: 13, color: AppColors.cardTextColor),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    const Text(
                      'Contact Us',
                      style: TextStyle(
                          fontSize: 13, color: AppColors.cardTextColor),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.07,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.fillAndBorderColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 30,
                            width: 20,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'lib/assets/images/en.jpeg'))),
                          ).animate().fade().scale(),
                          const Text(
                            'En',
                            style: TextStyle(
                                fontSize: 13, color: AppColors.cardTextColor),
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            size: 20,
                            color: AppColors.iconColor,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 13, color: AppColors.cardTextColor),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      width: 2,
                      height: 30,
                      color: AppColors.fillAndBorderColor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.08,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.mainColor),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 85,
                ),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.99,
                    decoration: const BoxDecoration(),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Invest In Leading \nDigital Assets on CryptoFlex\nAnd Accrue Profit.',
                                  style: TextStyle(
                                      fontSize: 50,
                                      color: AppColors.headerTextColor,
                                      fontWeight: FontWeight.w900),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Take Control Of Your Investment Portfolio Using\nCryptoFlex.',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey.withOpacity(0.6),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.009,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.greenAccent),
                                      child: Center(
                                        child: const Text(
                                          'Get Started',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      )),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.01,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: AppColors.mainColor),
                                      child: const Center(
                                          child: Text(
                                        'Login',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      )),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: const AssetImage(
                                      'lib/assets/images/bent.png'),
                                  height:
                                      MediaQuery.of(context).size.height * 0.74,
                                ),
                              ],
                            )
                                .animate()
                                .fadeIn(delay: 500.ms)
                                .move(duration: 400.ms)
                                .slide(duration: 500.ms)
                                .scale(duration: 200.ms),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              
                              MiniCards(
                                      imageUrl: 'lib/assets/images/eth.png',
                                      imageText: 'Ethereum',
                                      abbr: 'ETH',
                                      currentPrice: '2,860.30',
                                      changePrice: '-2.60',
                                      vol: '345.21M',
                                      changePriceColor: Colors.red,
                                      borderColor: Colors.blue.withOpacity(0.4))
                                  .animate()
                                  .fadeIn(delay: 500.ms)
                                  .move(duration: 50.ms)
                                  .slide(duration: 500.ms)
                                  .scale(duration: 200.ms),
                              MiniCards(
                                      imageUrl: 'lib/assets/images/btc.webp',
                                      imageText: 'Bitcoin',
                                      abbr: 'BTC',
                                      currentPrice: '35,260.30',
                                      changePrice: '+3.44',
                                      vol: '7060.32M',
                                      changePriceColor: Colors.greenAccent,
                                      borderColor:
                                          Colors.amber.withOpacity(0.4))
                                  .animate()
                                  .fadeIn(delay: 500.ms)
                                  .move(duration: 100.ms)
                                  .slide(duration: 500.ms)
                                  .scale(duration: 200.ms),
                              MiniCards(
                                      imageUrl:
                                          'lib/assets/images/real sol.webp',
                                      imageText: 'Solana',
                                      abbr: 'SOL',
                                      currentPrice: '260.30',
                                      changePrice: '+2.60',
                                      vol: '145.21M',
                                      changePriceColor: Colors.greenAccent,
                                      borderColor: Colors.blueGrey.shade900
                                          .withOpacity(0.4))
                                  .animate()
                                  .fadeIn(delay: 500.ms)
                                  .move(duration: 300.ms)
                                  .slide(duration: 500.ms)
                                  .scale(duration: 200.ms),
                              MiniCards(
                                imageUrl: 'lib/assets/images/uni.webp',
                                imageText: 'Uniswap',
                                abbr: 'UNI',
                                currentPrice: '1,160.00',
                                changePrice: '-6.10',
                                vol: '233.31M',
                                changePriceColor: Colors.red,
                                borderColor: Colors.pinkAccent.withOpacity(0.4),
                              )
                                  .animate()
                                  .fadeIn(delay: 500.ms)
                                  .move(duration: 400.ms)
                                  .slide(duration: 500.ms)
                                  .scale(duration: 200.ms),
                              MiniCards(
                                imageUrl: 'lib/assets/images/polygon.webp',
                                imageText: 'Polygon',
                                abbr: 'MATIC',
                                currentPrice: '3,860.30',
                                changePrice: '+2.60',
                                vol: '345.2M',
                                changePriceColor: Colors.greenAccent,
                                borderColor:
                                    AppColors.mainColor.withOpacity(0.4),
                              )
                                  .animate()
                                  .fadeIn(delay: 500.ms)
                                  .move(duration: 600.ms)
                                  .slide(duration: 500.ms)
                                  .scale(duration: 200.ms),
                            ],
                          ),
                        )
                      ],
                    ),),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 85),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Join the Future of Finance.',
                        style: TextStyle(
                            fontSize: 50,
                            color: AppColors.headerTextColor,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'Take control of your financial assets with our state of the art CryptoFlex\nPlatform, providing advanced security and seamless management options.',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.withOpacity(0.7),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.08),
                        const Image(
                            image: AssetImage('lib/assets/images/bent.png')),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.26,
                              width: MediaQuery.of(context).size.height * 0.45,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: Colors.indigo.withOpacity(0.2)),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.07,
                                      width: MediaQuery.of(context).size.width *
                                          0.035,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.purple.withOpacity(0.1),
                                              AppColors.cardTextColor
                                                  .withOpacity(0.2)
                                            ],
                                            begin: Alignment.bottomLeft,
                                            end: Alignment.topRight,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Icon(
                                        Icons.verified_user_rounded,
                                        size: 26,
                                        color: AppColors.mainColor,
                                      ),
                                    ),
                                    const Text(
                                      'Protect Your Investments',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                        'with advanced security measures in place, you\ncan be rest assured that your cryptocurrency\ninvestemnts are safe and protected.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color:
                                                Colors.black.withOpacity(0.4),
                                            fontWeight: FontWeight.w900))
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.015,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.26,
                              width: MediaQuery.of(context).size.height * 0.45,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Colors.purpleAccent,
                                      AppColors.mainColor,
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.07,
                                      width: MediaQuery.of(context).size.width *
                                          0.035,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Icon(
                                        Icons.currency_bitcoin_rounded,
                                        size: 26,
                                        color: AppColors.mainColor,
                                      ),
                                    ),
                                    const Text(
                                      'Simplify Your Transactions',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                        'with advanced security measures in place, you\ncan be rest assured that your cryptocurrency\ninvestemnts are safe and protected.',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.015,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.26,
                              width: MediaQuery.of(context).size.height * 0.45,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: Colors.indigo.withOpacity(0.2)),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.07,
                                      width: MediaQuery.of(context).size.width *
                                          0.035,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.purple.withOpacity(0.2),
                                              Colors.grey.shade100
                                                  .withOpacity(0.2)
                                            ],
                                            begin: Alignment.bottomLeft,
                                            end: Alignment.topRight,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Icon(
                                        Icons.timer,
                                        size: 26,
                                        color: AppColors.mainColor,
                                      ),
                                    ),
                                    const Text(
                                      'Save Time and Effort',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                        'No more worrying about the security of\nyour digital assets. with cryptoflex, growing\nyour investments is our goal.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color:
                                                Colors.black.withOpacity(0.4),
                                            fontWeight: FontWeight.w900))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 85),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.75,
                    decoration: const BoxDecoration(),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Features',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: AppColors.mainColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  'Multiple Exchange\nIntegration.',
                                  style: TextStyle(
                                      fontSize: 50,
                                      color: AppColors.headerTextColor,
                                      fontWeight: FontWeight.w900),
                                ),
                                Row(
                                  children: [
                                    Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.amber.withOpacity(0.6),
                                        ),
                                        child: const Icon(
                                          Icons.currency_bitcoin_outlined,
                                          size: 15,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.005,
                                    ),
                                    Text(
                                      'Invest in the financial markets via your payment Dashboard.',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey.withOpacity(0.7),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                Row(
                                  children: [
                                    Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.greenAccent,
                                        ),
                                        child: const Icon(
                                          Icons.receipt_long_outlined,
                                          size: 17,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.005,
                                    ),
                                    Text(
                                      'Execute withdrawal without the need to switch between different platforms.',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey.withOpacity(0.7),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                Row(
                                  children: [
                                    Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.blueAccent,
                                        ),
                                        child: const Icon(
                                          Icons.currency_exchange_outlined,
                                          size: 17,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.005,
                                    ),
                                    Text(
                                      'Perform seamless transactions without fear of data bridge.',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey.withOpacity(0.7),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                Row(
                                  children: [
                                    Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.blueGrey,
                                        ),
                                        child: const Icon(
                                          Icons.verified_user,
                                          size: 17,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.005,
                                    ),
                                    Text(
                                      'User verification with secured hash keys.',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey.withOpacity(0.7),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                Row(
                                  children: [
                                    Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.pinkAccent
                                              .withOpacity(0.6),
                                        ),
                                        child: const Icon(
                                          Icons.widgets_outlined,
                                          size: 17,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.005,
                                    ),
                                    Text(
                                      'Auto credit card scan section for KYC.',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey.withOpacity(0.7),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Center(
                                          child: Text(
                                        '01',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.mainColor),
                                      )),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Center(
                                          child: Text(
                                        '02',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.mainColor),
                                      )),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      decoration: BoxDecoration(
                                          color: AppColors.mainColor,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Center(
                                          child: Text(
                                        '03',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Center(
                                          child: Text(
                                        '04',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.mainColor),
                                      )),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Center(
                                          child: Text(
                                        '05',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.mainColor),
                                      )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Image.asset('lib/assets/images/onboard1.png')
                          ],
                        ),
                      ],
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 85),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.9,
                    decoration: const BoxDecoration(),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height * 0.2),
                              child:
                                  Image.asset('lib/assets/images/onboard3.png'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Benefits',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: AppColors.mainColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  'Seamless Investment\nExperience.',
                                  style: TextStyle(
                                      fontSize: 50,
                                      color: AppColors.headerTextColor,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  'Our platform\'s investment experience is more than just\nConvenience; It\'s a comprehensive approach that transforms how you\nInteract with the financial markets.',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey.withOpacity(0.7),
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.04),
                                Row(
                                  children: [
                                    const BenefitCard(
                                        cardIcon: Icons.multiple_stop,
                                        benefitText:
                                            'Execute trades, Manage\norders and access real time\ndata effortlessly.',
                                        benefitHeaderText:
                                            'Multi-Exchange\nIntegration.'),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.06,
                                    ),
                                    const BenefitCard(
                                        cardIcon: Icons.book_online_outlined,
                                        benefitText:
                                            'Expand your crypto\nknowledge with integrated\nguides',
                                        benefitHeaderText:
                                            'Educational\nResources.')
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Row(
                                  children: [
                                    const BenefitCard(
                                        cardIcon: Icons.thumb_up_alt_outlined,
                                        benefitText:
                                            'Our interfaces, to help\nusers navigate easily',
                                        benefitHeaderText:
                                            'User-Friendly\nInterface.'),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.078,
                                    ),
                                    const BenefitCard(
                                        cardIcon: Icons.qr_code_scanner,
                                        benefitText:
                                            'We\'re dedicated to\nenhancing your experience',
                                        benefitHeaderText:
                                            'Ongoing\nDevelopment.')
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Row(
                                  children: [
                                    const BenefitCard(
                                        cardIcon: Icons.bolt_outlined,
                                        benefitText:
                                            'Execute trades and orders\nwith a speed close to light.',
                                        benefitHeaderText:
                                            'Super\nfast trades.'),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.06,
                                    ),
                                    const BenefitCard(
                                        cardIcon: Icons.scatter_plot_outlined,
                                        benefitText:
                                            'Transactions are Managed\nfor future reference.',
                                        benefitHeaderText:
                                            'Transaction\nlogs and reference.')
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.99,
                color: Colors.grey.withOpacity(0.2),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    const Text(
                      'Pricing',
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'Choose Your Plan',
                      style: TextStyle(
                          fontSize: 30,
                          color: AppColors.headerTextColor,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.7,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Starter',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.deepPurple.shade900,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.013),
                                Text(
                                  'Affordable entry into the world of crypto\ntrading.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: Colors.grey.withOpacity(0.8)),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                const Row(
                                  children: [
                                    Text(
                                      '\$5\,000',
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: AppColors.headerTextColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '  /month',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: AppColors.headerTextColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.023),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            Colors.amber.withOpacity(0.6),
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Real-time market data.',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            Colors.amber.withOpacity(0.6),
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Limited access to advanced charting\ntools.',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            Colors.amber.withOpacity(0.6),
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Portfolio tracking for up to 5\ncryptocurrencies.',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            Colors.amber.withOpacity(0.6),
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Customizable alerts for price changes.',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            Colors.amber.withOpacity(0.6),
                                        child: const Icon(
                                          Icons.done,
                                          size: 12,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Curated news updates.',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.13),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        width: 1, color: AppColors.mainColor),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Get Started',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: AppColors.mainColor,
                                        fontWeight: FontWeight.w600),
                                  )),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.7,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.mainColor),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Pro',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: Text(
                                          'popular',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.deepPurple.shade900,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.013),
                                const Text(
                                  'Affordable entry into the world of crypto\ntrading.',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.white),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                const Row(
                                  children: [
                                    Text(
                                      '\$10\,000',
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '  /month',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.023),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor: Colors.amber.shade200,
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: AppColors.mainColor,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Real-time market data.',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor: Colors.amber.shade200,
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: AppColors.mainColor,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Limited access to advanced charting\ntools.',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor: Colors.amber.shade200,
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: AppColors.mainColor,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Portfolio tracking for up to 5\ncryptocurrencies.',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor: Colors.amber.shade200,
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: AppColors.mainColor,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Customizable alerts for price changes.',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor: Colors.amber.shade200,
                                        child: const Icon(
                                          Icons.done,
                                          size: 12,
                                          color: AppColors.mainColor,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Curated news updates.',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.13),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Get Started',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: AppColors.mainColor,
                                        fontWeight: FontWeight.w600),
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.7,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Premium',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.deepPurple.shade900,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.013),
                                Text(
                                  'Affordable entry into the world of crypto\ntrading.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: Colors.grey.withOpacity(0.8)),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                const Row(
                                  children: [
                                    Text(
                                      '\$100\,000',
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: AppColors.headerTextColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '  /month',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: AppColors.headerTextColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.023),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            Colors.amber.withOpacity(0.6),
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Real-time market data.',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            Colors.amber.withOpacity(0.6),
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Limited access to advanced charting\ntools.',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            Colors.amber.withOpacity(0.6),
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Portfolio tracking for up to 5\ncryptocurrencies.',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            Colors.amber.withOpacity(0.6),
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Customizable alerts for price changes.',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            Colors.amber.withOpacity(0.6),
                                        child: const Icon(
                                          Icons.done,
                                          size: 12,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Curated news updates.',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.13),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        width: 1, color: AppColors.mainColor),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Get Started',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: AppColors.mainColor,
                                        fontWeight: FontWeight.w600),
                                  )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 85),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Key Advantages.',
                        style: TextStyle(
                            fontSize: 30,
                            color: AppColors.headerTextColor,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'Discover the unique benefits of managing your crypto investments with CryptoFlex.',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.withOpacity(0.7),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.08),
                          child: const ContainerText(
                              containerText: 'Decentralized Platform'),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1),
                        const ContainerText(
                            containerText: 'Multi-Factor Authentication'),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.08),
                          child: const ContainerText(
                              containerText: 'Real-time Tracking'),
                        ),
                      ],
                    ),
                    const Image(
                        image: AssetImage('lib/assets/images/12 pro 7.png')),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width * 0.08),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Colors.purpleAccent,
                                  AppColors.mainColor,
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Center(
                                child: Text(
                              'Secure Wallet',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1),
                        const ContainerText(
                            containerText: 'User-Friendly Interface'),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1),
                        Padding(
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width * 0.08),
                          child: const ContainerText(
                              containerText: 'Advanced Encryption'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.99,
                color: Colors.grey.withOpacity(0.2),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    const Text(
                      'Elite Pricing',
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'Special VIP Plans',
                      style: TextStyle(
                          fontSize: 30,
                          color: AppColors.headerTextColor,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.7,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.mainColor),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Platinum',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      width: MediaQuery.of(context).size.width *
                                          0.05,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: Text(
                                          'popular',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.deepPurple.shade900,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.013),
                                const Text(
                                  'Affordable entry into the world of crypto\ntrading.',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.white),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                const Row(
                                  children: [
                                    Text(
                                      '\$1\,000\,000',
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '  /month',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.023),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor: Colors.amber.shade200,
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: AppColors.mainColor,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Real-time market data.',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor: Colors.amber.shade200,
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: AppColors.mainColor,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Limited access to advanced charting\ntools.',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor: Colors.amber.shade200,
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: AppColors.mainColor,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Portfolio tracking for up to 5\ncryptocurrencies.',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor: Colors.amber.shade200,
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: AppColors.mainColor,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Customizable alerts for price changes.',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor: Colors.amber.shade200,
                                        child: const Icon(
                                          Icons.done,
                                          size: 12,
                                          color: AppColors.mainColor,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Curated news updates.',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.13),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Get Started',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: AppColors.mainColor,
                                        fontWeight: FontWeight.w600),
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.7,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Gold',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.deepPurple.shade900,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.013),
                                Text(
                                  'Affordable entry into the world of crypto\ntrading.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: Colors.grey.withOpacity(0.8)),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                const Row(
                                  children: [
                                    Text(
                                      '\$5\,000\,000',
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: AppColors.headerTextColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '  /month',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: AppColors.headerTextColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.023),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            Colors.amber.withOpacity(0.6),
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Real-time market data.',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            Colors.amber.withOpacity(0.6),
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Limited access to advanced charting\ntools.',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            Colors.amber.withOpacity(0.6),
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Portfolio tracking for up to 5\ncryptocurrencies.',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            Colors.amber.withOpacity(0.6),
                                        child: const Icon(
                                          Icons.done,
                                          size: 10,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Customizable alerts for price changes.',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            Colors.amber.withOpacity(0.6),
                                        child: const Icon(
                                          Icons.done,
                                          size: 12,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005),
                                    const Text(
                                      'Curated news updates.',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.13),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        width: 1, color: AppColors.mainColor),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Get Started',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: AppColors.mainColor,
                                        fontWeight: FontWeight.w600),
                                  )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.9,
                child: Column(
                  children: [
                    const Text(
                      'Hear from Our Investors',
                      style: TextStyle(
                          fontSize: 40,
                          color: AppColors.headerTextColor,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'Don\'t just take our word for it - read what our happy client\'s have to say\n                    about their expereince with CryptoFlex.',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.withOpacity(0.7),
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.26,
                          width: MediaQuery.of(context).size.height * 0.45,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Colors.indigo.withOpacity(0.2)),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width:
                                      MediaQuery.of(context).size.width * 0.035,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'lib/assets/images/p1.jpg'),
                                          fit: BoxFit.cover),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.purple.withOpacity(0.1),
                                          AppColors.cardTextColor
                                              .withOpacity(0.2)
                                        ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                const Text(
                                  'Jessica B.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    'with advanced security measures in place, you\ncan be rest assured that your cryptocurrency\ninvestemnts are safe and protected.',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black.withOpacity(0.4),
                                        fontWeight: FontWeight.w900))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.26,
                          width: MediaQuery.of(context).size.height * 0.45,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Colors.indigo.withOpacity(0.2)),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width:
                                      MediaQuery.of(context).size.width * 0.035,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'lib/assets/images/p2.jpg'),
                                          fit: BoxFit.cover),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.purple.withOpacity(0.1),
                                          AppColors.cardTextColor
                                              .withOpacity(0.2)
                                        ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                const Text(
                                  'Elizabeth A.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    'with advanced security measures in place, you\ncan be rest assured that your cryptocurrency\ninvestemnts are safe and protected.',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black.withOpacity(0.4),
                                        fontWeight: FontWeight.w900))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.26,
                          width: MediaQuery.of(context).size.height * 0.45,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Colors.indigo.withOpacity(0.2)),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width:
                                      MediaQuery.of(context).size.width * 0.035,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'lib/assets/images/p3.jpg'),
                                          fit: BoxFit.cover),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.purple.withOpacity(0.2),
                                          Colors.grey.shade100.withOpacity(0.2)
                                        ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                const Text(
                                  'Jake P.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    'No more worrying about the security of\nyour digital assets. with cryptoflex, growing\nyour investments is our goal.',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black.withOpacity(0.4),
                                        fontWeight: FontWeight.w900))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.26,
                          width: MediaQuery.of(context).size.height * 0.45,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Colors.indigo.withOpacity(0.2)),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width:
                                      MediaQuery.of(context).size.width * 0.035,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'lib/assets/images/p4.jpg'),
                                          fit: BoxFit.cover),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.purple.withOpacity(0.1),
                                          AppColors.cardTextColor
                                              .withOpacity(0.2)
                                        ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                const Text(
                                  'Joseph W.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    'with advanced security measures in place, you\ncan be rest assured that your cryptocurrency\ninvestemnts are safe and protected.',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black.withOpacity(0.4),
                                        fontWeight: FontWeight.w900))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.26,
                          width: MediaQuery.of(context).size.height * 0.45,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Colors.indigo.withOpacity(0.2)),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width:
                                      MediaQuery.of(context).size.width * 0.035,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'lib/assets/images/p5.jpg'),
                                          fit: BoxFit.cover),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.purple.withOpacity(0.1),
                                          AppColors.cardTextColor
                                              .withOpacity(0.2)
                                        ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                const Text(
                                  'Daniel S.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    '"Great investent platform with a wonderful ROI\nand lots more for its users."',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black.withOpacity(0.4),
                                        fontWeight: FontWeight.w900))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.26,
                          width: MediaQuery.of(context).size.height * 0.45,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Colors.indigo.withOpacity(0.2)),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width:
                                      MediaQuery.of(context).size.width * 0.035,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'lib/assets/images/p6.jpeg'),
                                          fit: BoxFit.cover),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.purple.withOpacity(0.2),
                                          Colors.grey.shade100.withOpacity(0.2)
                                        ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                const Text(
                                  'Shawn L.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    '"The seamless trading experience here\nat cryptoflex would be a game changer\nfor anyone."',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black.withOpacity(0.4),
                                        fontWeight: FontWeight.w900))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                color: Colors.grey.withOpacity(0.2),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 85),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Unlock a new level\nof investment insight.',
                        style: TextStyle(
                            fontSize: 40,
                            color: AppColors.headerTextColor,
                            fontWeight: FontWeight.w900),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: const Center(
                            child: Text(
                          'Get Started',
                          style: TextStyle(
                              fontSize: 10,
                              color: AppColors.mainColor,
                              fontWeight: FontWeight.w600),
                        )),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
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
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: Container(
                          child: PageView(
                            controller: pageController,
                            onPageChanged: onPageChanged,
                            scrollDirection: Axis.horizontal,
                            children: const [
                              PageOne(),
                              PageTwo(),
                              PageThree(),
                              PageFour()
                            ],
                          ),
                        ),
                      ),
              
                       SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height * 0.03,
                                  ),
                      Row(
                      
                        children: [
                          Column(
                            
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    'Crypto',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Flex',
                                    style: TextStyle(
                                        color: AppColors.mainColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
              
                              SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height * 0.02,
                                  ),
              
              
                              Text(
                                'Take control of your financial security and\nstreamline your investments\nwith ease.',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 13),
                              ),
              
                              SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height * 0.02,
                                  ),
                              Row(
              
                                children: [
                                  const CircleAvatar(
                                    radius: 15,
                                    child: Icon(Icons.facebook_outlined, color: AppColors.headerTextColor,),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.008,
                                  ),
                                  const CircleAvatar(
                                    radius: 15,
                                    child: Icon(Icons.wechat_outlined, color: AppColors.headerTextColor,),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.008,
                                  ),
                                  const CircleAvatar(
                                    radius: 15,
                                    child: Icon(Icons.discord_outlined, color: AppColors.headerTextColor,),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
