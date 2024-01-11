import 'package:crypto_bomb/components/faq_card.dart';
import 'package:crypto_bomb/components/footer_desktop.dart';
import 'package:crypto_bomb/components/footer_mobile.dart';
import 'package:crypto_bomb/components/my_app_bar.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class FaqDesktop extends StatefulWidget {
  const FaqDesktop({super.key});

  @override
  State<FaqDesktop> createState() => _FaqDesktopState();
}

class _FaqDesktopState extends State<FaqDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.cardTextColor.withOpacity(0.1),
        appBar: myAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'FAQs.',
                style: TextStyle(
                    fontSize: 50,
                    color: AppColors.headerTextColor,
                    fontWeight: FontWeight.w900),
              ).animate().fadeIn(duration: 600.ms).slideX(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: SizedBox(
                    height: 700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FaqCard(
                              headerText:
                                  'How frequently can I make deposits or withdrawals?',
                              bodyText:
                                  'We do not limit the number of deposit and withdrawal\nrequests. However, to avoid unnecessary delays in processing,\nwe advised epositing (or withdrawing) the funds in one request\nand not splitting them.',
                            ),
                            FaqCard(
                              headerText: 'How can I withdraw my funds?',
                              bodyText:
                                  'We do not charge our clients any fees. Moreover, we\nalso cover the deposit and withdrawal fees that third parties\n(like Skrill, Neteller, and others) may apply.',
                            ),
                            FaqCard(
                              headerText: 'How can I deposit my account?',
                              bodyText:
                                  'To make a deposit, log into your Profile, choose your\nprimary account at the top of the page, and click\nNew Deposit. Then, select the payment option you prefer, specify\nthe deposit amount, and click Continue.',
                            ),
                            FaqCard(
                              headerText:
                                  'When will the deposited funds be credited to my balance?',
                              bodyText:
                                  'In the case of bank transfers, all requests are processed\nwithin 5 minutes during the working time of our Financial\nDepartment',
                            ),
                            FaqCard(
                              headerText:
                                  'Are my funds safe? Are your accounts segregated?',
                              bodyText:
                                  'Per international regulations, we use segregated accounts\nto separate clients funds from the company\'s balance sheets. This\n keeps your funds secure and untouched.',
                            ),
                          ],
                        ).animate().fadeIn(duration: 600.ms).slideY(begin: -1),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FaqCard(
                              headerText:
                                  'Which currencies can I use to deposit my account?',
                              bodyText:
                                  'You can deposit any currency to our USD account to\nbe converted per the official exchange rate at the moment\nof transaction.',
                            ),
                            FaqCard(
                              headerText:
                                  'I have not received the funds, even though my withdrawal\nhas been processed. What should I do?',
                              bodyText:
                                  'If you don\'t receive your funds for more than 24 hours,\nget in touch with our Customer Support. Usually withdrawal takes\nmuch less',
                            ),
                            FaqCard(
                              headerText: 'Can I cancel a withdrawal request?',
                              bodyText:
                                  'Yes, you can cancel a withdrawal request on the Withdrawals\nhistory page.',
                            ),
                            FaqCard(
                              headerText:
                                  'My withdrawal request status is pending. What does\nthat mean?',
                              bodyText:
                                  'If your withdrawal request status says pending, it means it\'s\nin the queue for processing. We will notify you as\nsoon as our Financial Department approves it.',
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
        ));
  }
}
