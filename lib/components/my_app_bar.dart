import 'package:crypto_bomb/main.dart';
import 'package:crypto_bomb/screens/about_us.dart';
import 'package:crypto_bomb/screens/contact_us.dart';
import 'package:crypto_bomb/screens/faqs.dart';
import 'package:crypto_bomb/screens/login_page.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

AppBar myAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
      toolbarHeight: MediaQuery.of(context).size.height*0.1,
      title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Row(
                    children: [
                      const SizedBox(
                        width: 4,
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
                      const SizedBox(
                        width: 19,
                      ),
                      GestureDetector(
                         onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const MyHomePage(title: 'Home',)));
                         },
                        child: const Text(
                          'Home',
                          style: TextStyle(
                              fontSize: 13, color: AppColors.cardTextColor),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                         onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AboutUs()));
                         },
                        child: const Text(
                          'About Us',
                          style: TextStyle(
                              fontSize: 13, color: AppColors.cardTextColor),
                        ),
                      ),
                      const SizedBox(
                        width:15,
                      ),
                      GestureDetector(
                         onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Faqs()));
                         },
                        child: const Text(
                          'FAQs',
                          style: TextStyle(
                              fontSize: 13, color: AppColors.cardTextColor),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                         onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const ContactUs()));
                         },
                        child: const Text(
                          'Contact Us',
                          style: TextStyle(
                              fontSize: 13, color: AppColors.cardTextColor),
                        ),
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
                            ),
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
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context ).push(MaterialPageRoute(
                              builder: (context) => const LogUserIn()));
                        },
                        child: Container(
                          width: MediaQuery.of(context ).size.width * 0.08,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.amber),
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
                      ),
                    ],
                  )
                ],
              ).animate().fadeIn(duration: 600.ms).slideX(),
            ),
    );
}