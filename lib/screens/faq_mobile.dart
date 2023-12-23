import 'package:crypto_bomb/components/faq_card.dart';
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

class FaqMobile extends StatefulWidget {
  const FaqMobile({super.key});

  @override
  State<FaqMobile> createState() => _FaqMobileState();
}

class _FaqMobileState extends State<FaqMobile> {
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
              'crypto',
              style: TextStyle(
                  color: AppColors.headerTextColor,
                  fontSize: 20,
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
        ).animate().fadeIn(duration: 600.ms).slideX(),
        backgroundColor: Colors.transparent,
      ),
        backgroundColor: AppColors.cardTextColor.withOpacity(0.1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'FAQs.',
                style: TextStyle(
                    fontSize: 30,
                    color: AppColors.headerTextColor,
                    fontWeight: FontWeight.w900),
              ).animate().fadeIn(duration: 600.ms).slideX(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Container(
                    height: 1100,
                    child: Column(
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FaqCard(
                              headerText:
                                  'How frequently can I make deposits or withdrawals?',
                              bodyText:
                                  'We do not limit the number of deposit and withdrawal\nrequests. However, to avoid unnecessary delays in processing,\nwe advised epositing (or withdrawing) the funds in one request\nand not splitting them.',
                            ),
                            SizedBox(
                              height: 15,
                            ),

                            FaqCard(
                              headerText: 'How can I withdraw my funds?',
                              bodyText:
                                  'We do not charge our clients any fees. Moreover, we\nalso cover the deposit and withdrawal fees that third parties\n(like Skrill, Neteller, and others) may apply.',
                            ),
                             SizedBox(
                              height: 15,
                            ),
                            FaqCard(
                              headerText: 'How can I deposit my account?',
                              bodyText:
                                  'To make a deposit, log into your Profile, choose your\nprimary account at the top of the page, and click\nNew Deposit. Then, select the payment option you prefer, specify\nthe deposit amount, and click Continue.',
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FaqCard(
                              headerText:
                                  'When will the deposited funds be credited to my balance?',
                              bodyText:
                                  'In the case of bank transfers, all requests are processed\nwithin 5 minutes during the working time of our Financial\nDepartment',
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FaqCard(
                              headerText:
                                  'Are my funds safe? Are your accounts segregated?',
                              bodyText:
                                  'Per international regulations, we use segregated accounts\nto separate clients funds from the company\'s balance sheets. This\n keeps your funds secure and untouched.',
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FaqCard(
                              headerText:
                                  'Which currencies can I use to deposit my account?',
                              bodyText:
                                  'You can deposit any currency to our USD account to\nbe converted per the official exchange rate at the moment\nof transaction.',
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FaqCard(
                              headerText:
                                  'I have not received the funds, even though my withdrawal\nhas been processed. What should I do?',
                              bodyText:
                                  'If you don\'t receive your funds for more than 24 hours,\nget in touch with our Customer Support. Usually withdrawal takes\nmuch less',
                            ),
                             SizedBox(
                              height: 15,
                            ),

                            FaqCard(
                              headerText: 'Can I cancel a withdrawal request?',
                              bodyText:
                                  'Yes, you can cancel a withdrawal request on the Withdrawals\nhistory page.',
                            ),
                             SizedBox(
                              height: 15,
                            ),
                            FaqCard(
                              headerText:
                                  'My withdrawal request status is pending. What does\nthat mean?',
                              bodyText:
                                  'If your withdrawal request status says pending, it means it\'s\nin the queue for processing. We will notify you as\nsoon as our Financial Department approves it.',
                            ),
                             SizedBox(
                              height: 15,
                            ),
                            FaqCard(
                              headerText: 'Can I cancel a withdrawal request?',
                              bodyText:
                                  'Yes, you can cancel a withdrawal request on the Withdrawals\nhistory page.',
                            ),
                          ],
                        ).animate().fadeIn(duration: 600.ms).slideY(begin: -1),
                      ],
                    )),
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
