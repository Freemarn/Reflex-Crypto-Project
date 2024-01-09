import 'package:crypto_bomb/components/achieve_card.dart';
import 'package:crypto_bomb/components/footer_desktop.dart';
import 'package:crypto_bomb/components/footer_mobile.dart';
import 'package:crypto_bomb/main.dart';
import 'package:crypto_bomb/screens/about_us.dart';
import 'package:crypto_bomb/screens/contact_us.dart';
import 'package:crypto_bomb/screens/faqs.dart';
import 'package:crypto_bomb/screens/login_page.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 700,
                color: AppColors.cardTextColor.withOpacity(0.1),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'About Crypto Flex.',
                            style: TextStyle(
                                fontSize: 30,
                                color: AppColors.headerTextColor,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'Welcome to our platform where we are passionate about empowering individuals traverse the financial\nmarkets seamlesly and amass huge ptofits. \nWe offer a wide range of investment opportunities to equip investors with opportunities\nto explore the financial markets.',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey.withOpacity(0.7),
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ).animate().fadeIn(duration: 400.ms).slideX(begin: 1),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        child: Lottie.network(
                          'https://lottie.host/6fe52a5f-8dda-42c4-86ff-916513c01c41/n7TrvyPmti.json',
                          repeat: true,
                          reverse: false,
                          animate: true,
                        ),
                      ).animate().fadeIn(duration: 600.ms).slideX(),
                    ],
                  ),
                )),
            SizedBox(
                height: 1100,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Achievements.',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: AppColors.headerTextColor,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                'We have unlocked a new dimension in our crypto journey with all of our achievements, cryptoflex is the ultimate platform for recognizing and celebrating your\nmilestones in the world of digital assets.\nWhether you\'re a seasoned trader, a blockchain enthusiast, or just starting your crypto adventure, Cryptoflexturns your accomplishments\ninto badges of honor.',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey.withOpacity(0.7),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const AchieveCard(
                                headerText: 'Trusted by Thousands',
                                bodyText:
                                    'we have successfully served over a thousand investors,\nhelping them unlock their potential and achieve their\ntrading goals.',
                                iconUrl: Icons.verified,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const AchieveCard(
                                headerText: 'Industry Patnerships',
                                bodyText:
                                    'we have established strong patnerships with industry leaders,\nenabling us to provide our investors with access to latest tools\nand technologies.',
                                iconUrl: Icons.all_inclusive_rounded,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const AchieveCard(
                                headerText: 'Award-wining Strides',
                                bodyText:
                                    'Our platform has received recognition and accolades in\nthe industry for her quality, depyh of expertise and effective\n trading methodologies.',
                                iconUrl: Icons.blender_rounded,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const AchieveCard(
                                headerText: 'Positive Feedback',
                                bodyText:
                                    'we take pride in the positive feedback we\n receive from our investors, who\nappreciate the practicality and relevance of trading prowess.',
                                iconUrl: Icons.list_outlined,
                              ),
                            ],
                          ).animate().fadeIn(duration: 400.ms).slideX(begin: 1),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.55,
                            child: Lottie.network(
                              'https://lottie.host/d32a85d7-5431-44e1-95c2-ad3daafb3607/g1XkqG0NcB.json',
                              repeat: true,
                              reverse: false,
                              animate: true,
                            ),
                          ).animate().fadeIn(duration: 600.ms).slideX(),
                        ],
                      ),
                    ],
                  ),
                )),
            Container(
                height: 1100,
                color: AppColors.cardTextColor.withOpacity(0.1),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Goals.',
                            style: TextStyle(
                                fontSize: 30,
                                color: AppColors.headerTextColor,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'As a platform, we are keened on Defining a compelling and actionable strategic\nvision that aligns with the organization\'s mission.\nStreamline internal processes and workflows to enhance operational efficiency.\nIdentify areas for improvement, Foster a culture of innovation and adaptability',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey.withOpacity(0.7),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const AchieveCard(
                            headerText: 'ICO Connoisseur Recognition',
                            bodyText:
                                'Successfully participate in Initial Coin Offerings (ICOs) and\nreceive the ICO Connoisseur badge.',
                            iconUrl: Icons.check,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const AchieveCard(
                            headerText: 'Mastering Market Analysis',
                            bodyText:
                                'Develop a keen understanding of market trends,\ntechnical analysis, and fundamental factors\ninfluencing cryptocurrency prices.',
                            iconUrl: Icons.check,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const AchieveCard(
                            headerText: 'Security and Risk Management',
                            bodyText:
                                'Prioritize the security of  digital assets. Implement robust\nsecurity measures, such as hardware wallets and two-factor\nauthentication.',
                            iconUrl: Icons.check,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const AchieveCard(
                            headerText: 'Achieving Financial Goals',
                            bodyText:
                                'Define clear financial objectives for your cryptocurrency\ninvestments. Whether it\'s achieving a specific return on\ninvestment, funding a major life goal, or building\ngenerational wealth',
                            iconUrl: Icons.check,
                          ),
                        ],
                      ).animate().fadeIn(duration: 400.ms).slideX(begin: 1),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.55,
                        child: Lottie.network(
                          'https://lottie.host/aaf965dc-db99-430c-822a-17fd31e0e7d9/l2LFj779p4.json',
                          repeat: true,
                          reverse: false,
                          animate: true,
                        ),
                      ).animate().fadeIn(duration: 600.ms).slideX(),
                    ],
                  ),
                )),
            //const FooterWidget()
            LayoutBuilder(builder: (context, Constraints) {
              if (Constraints.maxWidth >= 800) {
                return const FooterDesktop();
              } else {
                return const FooterMobile();
              }
            })
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black.withOpacity(0.4),
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100,),
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
