import 'package:crypto_bomb/components/faq_card.dart';
import 'package:crypto_bomb/components/footer.dart';
import 'package:crypto_bomb/components/my_app_bar.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Faqs extends StatelessWidget {
  const Faqs({
    super.key,
  });

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
                child: Container(
                    height: 700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            FaqCard(
                              headerText:
                                  'How frequently can I make deposits or withdrawals?',
                              bodyText:
                                  'We do not limit the number of deposit and withdrawal requests. However, to avoid unnecessary delays\nin processing, we advise depositing (or withdrawing) the funds in one request and not splitting them.',
                            ),
                            FaqCard(
                              headerText: 'How can I withdraw my funds?',
                              bodyText:
                                  'We do not charge our clients any fees. Moreover, we also cover the deposit and withdrawal\nfees that third parties (like Skrill, Neteller, and others) may apply.',
                            ),
                            FaqCard(
                              headerText: 'How can I deposit my account?',
                              bodyText:
                                  'To make a deposit, log into your Profile, choose your primary account at the top of\nthe page, and click New Deposit. Then, select the payment option you prefer, specify the deposit\namount, and click Continue.',
                            ),
                            FaqCard(
                              headerText:
                                  'When will the deposited funds be credited to my balance?',
                              bodyText:
                                  'In the case of bank transfers, all requests are processed within 5 minutes during the working time\nof our Financial Department',
                            ),
                            FaqCard(
                              headerText:
                                  'Are my funds safe? Are your accounts segregated?',
                              bodyText:
                                  'Per international regulations, we use segregated accounts to separate clients funds from the\ncompany\'s balance sheets. This keeps your funds secure and untouched.',
                            ),
                          ],
                        ).animate().fadeIn(duration: 600.ms).slideY(begin: -1),

                         const Column(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            FaqCard(
                              headerText:
                                  'Which currencies can I use to deposit my account?',
                              bodyText:
                                  'You can deposit any currency to our USD account to be converted per the official exchange\nrate at the moment of transaction.',
                            ),
                            FaqCard(
                              headerText:
                                  'I have not received the funds, even though my withdrawal\nhas been processed. What should I do?',
                              bodyText:
                                  'If you don\'t receive your funds for more than 24 hours, get in touch with our Customer\nSupport. Usually withdrawal takes much less',
                            ),
                            FaqCard(
                              headerText: 'Can I cancel a withdrawal request?',
                              bodyText:
                                  'Yes, you can cancel a withdrawal request on the Withdrawals history page.',
                            ),
                            FaqCard(
                              headerText:
                                  'My withdrawal request status is pending. What does that mean?',
                              bodyText:
                                  'If your withdrawal request status says pending, it means it\'s in the queue for processing. We\nwill notify you as soon as our Financial Department approves it.',
                            ),
                            FaqCard(
                              headerText: 'Can I cancel a withdrawal request?',
                              bodyText:
                                  'Yes, you can cancel a withdrawal request on the Withdrawals history page.',
                            ),
                          ],
                        ).animate().fadeIn(duration: 600.ms).slideY(begin: -1),
                      ],
                    )),
              ),
              const FooterWidget()
            ],
          ),
        ));
  }
}
