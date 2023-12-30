import 'package:crypto_bomb/components/achieve_card.dart';
import 'package:crypto_bomb/components/footer_desktop.dart';
import 'package:crypto_bomb/components/footer_mobile.dart';
import 'package:crypto_bomb/components/my_app_bar.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: myAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 600,
                color: AppColors.cardTextColor.withOpacity(0.1),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 300,
                            child: Lottie.network(
                              'https://lottie.host/6fe52a5f-8dda-42c4-86ff-916513c01c41/n7TrvyPmti.json',
                              repeat: true,
                              reverse: false,
                              animate: true,
                            ),
                          ).animate().fadeIn(duration: 600.ms).slideX(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'About Crypto Flex.',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: AppColors.headerTextColor,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                'Welcome to our platform where we are passionate about empowering\nindividuals traverse the financial markets seamlesly and amass huge ptofits \nwe offer a wide range of investment opportunities to equip investors with\n opportunities to explore the financial markets.',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.withOpacity(0.7),
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Image(
                                image: AssetImage('lib/assets/images/dem.webp'),
                                height: 300,
                                width: 500,
                              )
                            ],
                          ).animate().fadeIn(duration: 400.ms).slideX(begin: 1),
                        ],
                      ),
                    ],
                  ),
                )),
            Container(
                height: 600,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Achievements.',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: AppColors.headerTextColor,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                'We have unlocked a new dimension in our crypto journey with all of our\nAchievements, cryptoflex is the ultimate platform for recognizing and celebrating\n your milestones in the world of digital assets. Whether you\'re a seasoned trader, a blockchain\n enthusiast, or just starting your crypto adventure, Cryptoflexturns your accomplishments\n into badges of honor.',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.withOpacity(0.7),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const AchieveCard(
                                headerText: 'Trusted by Thousands',
                                bodyText:
                                    'we have successfully served over a thousand investors, helping them\nunlock their potential and achieve their trading goals.',
                                iconUrl: Icons.verified,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const AchieveCard(
                                headerText: 'Industry Patnerships',
                                bodyText:
                                    'we have established strong patnerships with industry leaders, enabling us to\nprovide our investors with access to latest tools and technologies.',
                                iconUrl: Icons.all_inclusive_rounded,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const AchieveCard(
                                headerText: 'Award-wining Strides',
                                bodyText:
                                    'Our platform has received recognition and accolades in the industry for her\nquality, depyh of expertise and effective trading methodologies.',
                                iconUrl: Icons.blender_rounded,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const AchieveCard(
                                headerText: 'Positive Feedback',
                                bodyText:
                                    'we take pride in the positive feedback we receive from our investors, who\nappreciate the practicality and relevance of trading prowess.',
                                iconUrl: Icons.list_outlined,
                              ),
                            ],
                          ).animate().fadeIn(duration: 400.ms).slideX(begin: 1),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.44,
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
                height: 600,
                color: AppColors.cardTextColor.withOpacity(0.1),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.44,
                            child: Lottie.network(
                              'https://lottie.host/aaf965dc-db99-430c-822a-17fd31e0e7d9/l2LFj779p4.json',
                              repeat: true,
                              reverse: false,
                              animate: true,
                            ),
                          ).animate().fadeIn(duration: 600.ms).slideX(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Goals.',
                                style: TextStyle(
                                    fontSize: 50,
                                    color: AppColors.headerTextColor,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                'As a platform, we are keened on Defining a compelling and actionable strategic\nvision that aligns with the organization\'s mission.\nStreamline internal processes and workflows to enhance operational efficiency.\nIdentify areas for improvement, Foster a culture of innovation and adaptability',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.withOpacity(0.7),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const AchieveCard(
                                headerText: 'ICO Connoisseur Recognition',
                                bodyText:
                                    'Successfully participate in Initial Coin Offerings (ICOs) and receive the\n ICO Connoisseur badge.',
                                iconUrl: Icons.check,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const AchieveCard(
                                headerText: 'Mastering Market Analysis',
                                bodyText:
                                    'Develop a keen understanding of market trends, technical analysis, and\nfundamental factors influencing cryptocurrency prices.',
                                iconUrl: Icons.check,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const AchieveCard(
                                headerText: 'Security and Risk Management',
                                bodyText:
                                    'Prioritize the security of  digital assets. Implement robust security measures,\nsuch as hardware wallets and two-factor authentication.',
                                iconUrl: Icons.check,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const AchieveCard(
                                headerText: 'Achieving Financial Goals',
                                bodyText:
                                    'Define clear financial objectives for your cryptocurrency investments. Whether it\'s\nachieving a specific return on investment, funding a major life\ngoal, or building generational wealth',
                                iconUrl: Icons.check,
                              ),
                            ],
                          ).animate().fadeIn(duration: 400.ms).slideX(begin: 1),
                        ],
                      ),
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
    );
  }
}
