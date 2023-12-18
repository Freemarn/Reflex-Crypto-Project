import 'dart:math';
import 'package:crypto_bomb/admin%20%20screen/admin_dashboard.dart';
import 'package:crypto_bomb/components/benfits_card.dart';
import 'package:crypto_bomb/components/container_text.dart';
import 'package:crypto_bomb/components/footer.dart';
import 'package:crypto_bomb/components/liveupdate_card.dart';
import 'package:crypto_bomb/components/my_app_bar.dart';
import 'package:crypto_bomb/components/offer_cards.dart';
import 'package:crypto_bomb/firebase_options.dart';
import 'package:crypto_bomb/screens/login_page.dart';
import 'package:crypto_bomb/screens/register_page.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:lottie/lottie.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
EasyLoading.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CryptoFlex',
      initialRoute: '/',
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) {
              switch (routeSettings.name) {
                case AdminPanel.routeName:
                  return const AdminPanel();
                default:
                  return const MyHomePage(title: 'Crypto bomb');
              }
            });
      },
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Crypto bomb'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _rotationTween;

  

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _rotationTween =
        Tween(begin: 0.0, end: 0.0 * pi).animate(_animationController);

    _animationController.forward();

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reset();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
   
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: myAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height:650,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.8),
                      image: const DecorationImage(
                          image: AssetImage('lib/assets/images/space.jpeg'),
                          fit: BoxFit.cover)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 85),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Invest In Leading \nDigital Assets on CryptoFlex\nAnd Accrue Profit.',
                                  style: TextStyle(
                                      fontSize: 50,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ).animate().fadeIn(duration: 600.ms).slideX(),
                                Row(
                                  children: [
                                    const Text(
                                      'Take Control Of Your Investment Portfolio Using\nCryptoFlex.',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    )
                                        .animate()
                                        .fadeIn(duration: 600.ms)
                                        .slideX(),
                                  ],
                                ),
                                const SizedBox(
                                  height:20,
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const RegisterUser()));
                                      },
                                      child: Container(
                                        width: 120,
                                        height: 45,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RotationTransition(
                                  turns: _rotationTween,
                                  child: const Image(
                                    image: AssetImage(
                                        'lib/assets/images/bent.png'),
                                    height:450,
                                  ),
                                )
                                    .animate()
                                    .fadeIn(duration: 400.ms)
                                    .slideX(begin: 1),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 85),
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
                                    borderColor: Colors.amber.withOpacity(0.4))
                                .animate()
                                .fadeIn(duration: 600.ms)
                                .slideY(),
                            const MiniCards(
                                    imageUrl: 'lib/assets/images/real sol.webp',
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
                                    imageUrl: 'lib/assets/images/uni.webp',
                                    imageText: 'Uniswap',
                                    abbr: 'UNI',
                                    currentPrice: '1,160.00',
                                    changePrice: '-6.10',
                                    vol: '233.31M',
                                    changePriceColor: Colors.red,
                                    borderColor:
                                        Colors.pinkAccent.withOpacity(0.4))
                                .animate()
                                .fadeIn(duration: 800.ms)
                                .slideY(),
                            MiniCards(
                                    imageUrl: 'lib/assets/images/polygon.webp',
                                    imageText: 'Polygon',
                                    abbr: 'MATIC',
                                    currentPrice: '3,860.30',
                                    changePrice: '+2.60',
                                    vol: '345.2M',
                                    changePriceColor: Colors.greenAccent,
                                    borderColor:
                                        AppColors.mainColor.withOpacity(0.4))
                                .animate()
                                .fadeIn(duration: 900.ms)
                                .slideY(),
                          ],
                        ),
                      )
                    ],
                  )),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 550,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  
                  children: [
                    const Text(
                      'Achieve major financial goals with CryptoFlex.',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: AppColors.headerTextColor),
                    ),
                    Text(
                      'At CryptoFlex, we offer you.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.withOpacity(0.7),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
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
                                  builder: (context) => const RegisterUser()));
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
              SizedBox(
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: Row(
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
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
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
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 85),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: const BoxDecoration(),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.6,
                              child: Lottie.network(
                                'https://lottie.host/b151e842-ec30-48d2-a78c-54454fc7dc73/Tgc9vKPl2H.json',
                                repeat: true,
                                reverse: false,
                                animate: true,
                              ),
                            ),
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
                                      fontSize: 50,
                                      color: AppColors.headerTextColor,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  'Our platform\'s investment encourages more than one payment system\nthe integration of a multi-payment system on CryptoFlex has made it possible for users\nto invest from around the world using their preffered payment option.',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey.withOpacity(0.7),
                                  ),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.05),
                                Image(
                                  image: const AssetImage(
                                      'lib/assets/images/multiple.png'),
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 60),
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              SizedBox(
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
              SizedBox(
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
                    Image(
                        image:
                            const AssetImage('lib/assets/images/12 pro 7.png'),
                        height: MediaQuery.of(context).size.height * 0.4),
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
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
            

              const FooterWidget()
            ],
          ),
        ));
  }
}
