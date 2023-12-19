import 'package:crypto_bomb/components/footer.dart';
import 'package:crypto_bomb/components/message_button.dart';
import 'package:crypto_bomb/components/my_app_bar.dart';
import 'package:crypto_bomb/components/register_fields.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cardTextColor.withOpacity(0.1),
        appBar: myAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
               const Text(
                        'Contact Us.',
                        style: TextStyle(
                            fontSize: 50,
                            color: AppColors.headerTextColor,
                            fontWeight: FontWeight.w900),
                      ).animate().fadeIn(duration: 600.ms).slideX(),
              Container(
             
                height: 600,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 80),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     
                      Text(
                        'Welcome to our Contact Us page! We value your feedback, inquiries, and thoughts. Please feel free to get\nin touch with us using the form below or reach out to our support team directly. ',
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColors.headerTextColor.withOpacity(0.8),
                            fontWeight: FontWeight.w300),
                      ).animate().fadeIn(duration: 600.ms).slideX(),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Column(
                        children: [
                          const Row(
                            children: [
                              RegistrationForm(headerName: 'Email', prefixIconUrl: Icons.alternate_email, hintTitle: 'name@example.com'),
                              SizedBox(width: 10,),
                               RegistrationForm(headerName: 'Name', prefixIconUrl: Icons.person, hintTitle: 'Username')
                            ],
                          ).animate().fadeIn(duration: 600.ms).slideX(begin: 1),

                          const SizedBox(height: 20,),
                          const Row(
                            children: [
                              Text(
                                'Message',
                                style: TextStyle(
                                    fontSize: 16, color: AppColors.headerTextColor, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 15),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20,),


                          TextField(
                            maxLines: 8,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor:
                                    AppColors.sidebarTextColor.withOpacity(0.1),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            const Color.fromARGB(255, 5, 24, 58)
                                                .withOpacity(0.1)),
                                    borderRadius: BorderRadius.circular(20)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.sidebarTextColor
                                            .withOpacity(0.1)),
                                    borderRadius: BorderRadius.circular(20)),
                                hintText: 'Tell us something here...',
                                hintStyle: const TextStyle(
                                    fontSize: 12,
                                    color: AppColors.sidebarTextColor)),
                          ).animate().fadeIn(duration: 600.ms).slideY(begin: 1),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MessageButton(
                              buttonColor: AppColors.mainColor,
                              buttonText: 'Submit',
                              textColor: Colors.white),
                        ],
                      ).animate().fadeIn(duration: 600.ms).slideX(),
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


