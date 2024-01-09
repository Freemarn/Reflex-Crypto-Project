import 'package:crypto_bomb/components/benfits_card.dart';
import 'package:crypto_bomb/components/container_text.dart';
import 'package:crypto_bomb/components/footer_desktop.dart';
import 'package:crypto_bomb/components/footer_mobile.dart';
import 'package:crypto_bomb/components/liveupdate_card.dart';
import 'package:crypto_bomb/components/offer_cards.dart';
import 'package:crypto_bomb/main.dart';
import 'package:crypto_bomb/screens/about_us.dart';
import 'package:crypto_bomb/screens/contact_us.dart';
import 'package:crypto_bomb/screens/faqs.dart';
import 'package:crypto_bomb/screens/login_page.dart';
import 'package:crypto_bomb/screens/register_page.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class MainMobile extends StatefulWidget {
  const MainMobile({super.key});

  @override
  State<MainMobile> createState() => _MainMobileState();
}

class _MainMobileState extends State<MainMobile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Evian',
              style: TextStyle(
                  color: AppColors.headerTextColor,
                  fontSize: 20,
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
        ).animate().fadeIn(duration: 600.ms).slideX(),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 950,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.8),
                      image: const DecorationImage(
                          image: AssetImage('lib/assets/images/space.jpeg'),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Invest In Leading \nDigital Assets on EvianOptions\nAnd Accrue Profit.',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            ).animate().fadeIn(duration: 600.ms).slideX(),
                            const Text(
                              'Take Control Of Your Investment Portfolio Using\nEvianOptions.',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ).animate().fadeIn(duration: 600.ms).slideX(),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const RegisterUserHere()));
                                  },
                                  child: Container(
                                    width: 120,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.amber),
                                    child: const Center(
                                        child: Text(
                                      'Get Started',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    )),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LogUserIn()));
                                  },
                                  child: Container(
                                    width: 120,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    child: const Center(
                                        child: Text(
                                      'Login',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    )),
                                  ),
                                )
                              ],
                            ).animate().fadeIn(duration: 600.ms).slideX(),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(
                              image: AssetImage('lib/assets/images/bent.png'),
                              height: 350,
                            )
                                .animate()
                                .fadeIn(duration: 400.ms)
                                .slideX(begin: 1),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                MiniCards(
                                        imageUrl: 'lib/assets/images/eth.png',
                                        imageText: 'Ethereum',
                                        abbr: 'ETH',
                                        currentPrice: '2,860.30',
                                        changePrice: '-2.60',
                                        vol: '345.21M',
                                        changePriceColor: Colors.red,
                                        borderColor:
                                            Colors.blue.withOpacity(0.4))
                                    .animate()
                                    .fadeIn(duration: 600.ms)
                                    .slideY(),
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
                                    .fadeIn(duration: 600.ms)
                                    .slideY(),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const MiniCards(
                                        imageUrl:
                                            'lib/assets/images/real sol.webp',
                                        imageText: 'Solana',
                                        abbr: 'SOL',
                                        currentPrice: '260.30',
                                        changePrice: '+2.60',
                                        vol: '145.21M',
                                        changePriceColor: Colors.greenAccent,
                                        borderColor: Colors.blueGrey)
                                    .animate()
                                    .fadeIn(duration: 700.ms)
                                    .slideY(),
                                MiniCards(
                                        imageUrl:
                                            'lib/assets/images/polygon.webp',
                                        imageText: 'Polygon',
                                        abbr: 'MATIC',
                                        currentPrice: '3,860.30',
                                        changePrice: '+2.60',
                                        vol: '345.2M',
                                        changePriceColor: Colors.greenAccent,
                                        borderColor: AppColors.mainColor
                                            .withOpacity(0.4))
                                    .animate()
                                    .fadeIn(duration: 900.ms)
                                    .slideY(),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),

              SizedBox(
                height: 1100,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Achieve major financial goals with EvianOptions.',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.headerTextColor),
                      ),
                      Text(
                        'At EvianOptions, we offer you.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.withOpacity(0.7),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OfferCard(
                              gitUrl:
                                  'https://lottie.host/661e03ad-bfc4-492a-bc6b-061e0d456a15/saIEexU9b7.json',
                              blurb: 'Bespoke User Interfaces',
                            ),
                            OfferCard(
                                gitUrl:
                                    'https://lottie.host/5663891c-fae0-43e6-a8d7-3864d4c24347/zSmWteMszs.json',
                                blurb: 'Top-flight Support'),
                            OfferCard(
                                gitUrl:
                                    'https://lottie.host/e64669e5-fda3-45a1-b04c-a3f22227c163/QKAR8RrTQH.json',
                                blurb: 'Powerful security'),
                            OfferCard(
                                gitUrl:
                                    'https://lottie.host/6e741141-c8a4-4751-a83f-93bf6d4465c2/wBDexAdgEP.json',
                                blurb: 'Numerous currencies'),
                          ]),
                      const SizedBox(
                        height: 120,
                      ),
                      Container(
                        width: 110,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(width: 1, color: Colors.lightBlue)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterUserHere()));
                              },
                              child: const Text(
                                'Open Account',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Join the Future of Finance.',
                        style: TextStyle(
                            fontSize: 20,
                            color: AppColors.headerTextColor,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'Take control of your financial assets with our state of the art EvianOptions\nPlatform, providing advanced security and seamless management options.',
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
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 220,
                          width: 300,
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
                                  height: 50,
                                  width: 50,
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
                                      borderRadius: BorderRadius.circular(10)),
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
                                        color: Colors.black.withOpacity(0.4),
                                        fontWeight: FontWeight.w900))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 220,
                          width: 300,
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
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
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
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 220,
                          width: 300,
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
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.purple.withOpacity(0.2),
                                          Colors.grey.shade100.withOpacity(0.2)
                                        ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
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
                                    'No more worrying about the security of\nyour digital assets. with EvianOptions, growing\nyour investments is our goal.',
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
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Container(
                    height: 600,
                    decoration: const BoxDecoration(),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Multi-Payment',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: AppColors.mainColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  'Multi-payment system built\njust for you.',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: AppColors.headerTextColor,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  'Our platform\'s investment encourages more than one payment system.\nThe integration of a multi-payment system on EvianOptions\nhas made it possible for users to invest from around\n the world using their preffered payment option.',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey.withOpacity(0.7),
                                  ),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.05),
                                // Image(
                                //   image: const AssetImage(
                                //       'lib/assets/images/multiple.png'),
                                //   height: MediaQuery.of(context).size.height *
                                //       0.3,
                                // )

                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.6,
                                  child: Lottie.network(
                                    'https://lottie.host/b151e842-ec30-48d2-a78c-54454fc7dc73/Tgc9vKPl2H.json',
                                    repeat: true,
                                    reverse: false,
                                    animate: true,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Container(
                    height: 780,
                    decoration: const BoxDecoration(),
                    child: Column(
                      children: [
                        Column(
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
                                      fontSize: 30,
                                      color: AppColors.headerTextColor,
                                      fontWeight: FontWeight.w900),
                                ),
                                Row(
                                  children: [
                                    Container(
                                        height: 40,
                                        width: 40,
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
                                        height: 40,
                                        width: 40,
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
                                      'Execute withdrawal without the need to switch between\ndifferent platforms.',
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
                                        height: 40,
                                        width: 40,
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
                                        height: 40,
                                        width: 40,
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
                                        height: 40,
                                        width: 40,
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
                                      height: 40,
                                      width: 40,
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
                                      height: 40,
                                      width: 40,
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
                                      height: 40,
                                      width: 40,
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
                                      height: 40,
                                      width: 40,
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
                                      height: 40,
                                      width: 40,
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
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.6,
                              child: Lottie.network(
                                'https://lottie.host/42c1919e-b2d5-4ca0-b2a0-2c40c3cb87a1/KB78Wl2mUe.json',
                                repeat: true,
                                reverse: false,
                                animate: true,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Container(
                    height: 760,
                    decoration: const BoxDecoration(),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
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
                                      fontSize: 30,
                                      color: AppColors.headerTextColor,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  'Our platform\'s investment experience is more than just\nConvenience; It\'s a comprehensive approach that transforms how you\nInteract with the financial markets.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey.withOpacity(0.7),
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.04),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset('lib/assets/images/onboard3.png'),
                      ],
                    )),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              SizedBox(
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
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
                        'Discover the unique benefits of managing your crypto investments with EvianOptions.',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.withOpacity(0.7),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const ContainerText(
                            containerText: 'Decentralized Platform'),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1),
                        const ContainerText(
                            containerText: 'Multi-Factor Authentication'),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1),
                        const ContainerText(
                            containerText: 'Real-time Tracking'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image(
                        image:
                            const AssetImage('lib/assets/images/12 pro 7.png'),
                        height: MediaQuery.of(context).size.height * 0.4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1),
                        const ContainerText(
                            containerText: 'User-Friendly Interface'),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1),
                        const ContainerText(
                            containerText: 'Advanced Encryption')
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                height: 1150,
                child: Column(
                  children: [
                    const Text(
                      'Hear from Our Investors',
                      style: TextStyle(
                          fontSize: 30,
                          color: AppColors.headerTextColor,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'Don\'t just take our word for it - read what our happy client\'s have to say\n                    about their expereince with EvianOptions.',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.withOpacity(0.7),
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 190,
                          width: 280,
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
                                  height: 50,
                                  width: 50,
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
                          height: MediaQuery.of(context).size.width * 0.015,
                        ),
                        Container(
                          height: 190,
                          width: 280,
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
                                  height: 50,
                                  width: 50,
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
                          height: MediaQuery.of(context).size.width * 0.015,
                        ),
                        Container(
                          height: 190,
                          width: 280,
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
                                  height: 50,
                                  width: 50,
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
                                    'No more worrying about the security of\nyour digital assets. with EvianOptions, growing\nyour investments is our goal.',
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 190,
                          width: 280,
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
                                  height: 50,
                                  width: 50,
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
                          height: MediaQuery.of(context).size.width * 0.015,
                        ),
                        Container(
                          height: 190,
                          width: 280,
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
                                  height: 50,
                                  width: 50,
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
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 170,
                color: Colors.grey.withOpacity(0.2),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Unlock a new level\nof investment insight.',
                        style: TextStyle(
                            fontSize: 30,
                            color: AppColors.headerTextColor,
                            fontWeight: FontWeight.w900),
                      ),
                      Container(
                        width: 100,
                        height: 45,
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
              //const FooterWidget()
              LayoutBuilder(builder: (context, Constraints) {
                if (Constraints.maxWidth >= 800) {
                  return const FooterDesktop();
                } else {
                  return const FooterMobile();
                }
              })
            ],
          )),
          Positioned(
            top: 350,
            right: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(),
                child: FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.chat, color: AppColors.mainColor,),
                    ),
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.black.withOpacity(0.4),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Icon(
                    Icons.currency_bitcoin_rounded,
                    color: Colors.white,
                    size: 50,
                  ).animate().fadeIn(duration: 600.ms).slideX(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 14,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const MyHomePage(
                                    title: 'Home',
                                  )));
                        },
                        child: const Text(
                          'Home',
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ),
                    ],
                  ).animate().fadeIn(duration: 600.ms).slideX(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.people,
                        color: Colors.white,
                        size: 14,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const AboutUs()));
                        },
                        child: const Text(
                          'About Us',
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ),
                    ],
                  ).animate().fadeIn(duration: 500.ms).slideX(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.interests,
                        color: Colors.white,
                        size: 14,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Faqs()));
                        },
                        child: const Text(
                          'FAQs',
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ),
                    ],
                  ).animate().fadeIn(duration: 400.ms).slideX(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 14,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ContactUs()));
                        },
                        child: const Text(
                          'Contact Us',
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ),
                    ],
                  ).animate().fadeIn(duration: 300.ms).slideX(),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LogUserIn()));
                    },
                    child: Container(
                      width: 100,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ).animate().fadeIn(duration: 200.ms).slideX(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 45,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(3)),
              child: ElevatedButton(
                onPressed: _closeDrawer,
                child: const Text('Close'),
              ),
            ),
          ],
        ),
      ),
      drawerEnableOpenDragGesture: false,
    );
  }
}
