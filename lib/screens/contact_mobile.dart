import 'package:crypto_bomb/components/footer_desktop.dart';
import 'package:crypto_bomb/components/footer_mobile.dart';
import 'package:crypto_bomb/components/message_button.dart';
import 'package:crypto_bomb/components/register_fields.dart';
import 'package:crypto_bomb/main.dart';
import 'package:crypto_bomb/screens/about_us.dart';
import 'package:crypto_bomb/screens/contact_us.dart';
import 'package:crypto_bomb/screens/faqs.dart';
import 'package:crypto_bomb/screens/login_page.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.cardTextColor.withOpacity(0.2),
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
      body: SingleChildScrollView(
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: const Text(
                  'Contact Us.',
                  style: TextStyle(
                      fontSize: 30,
                      color: AppColors.headerTextColor,
                      fontWeight: FontWeight.w900),
                ).animate().fadeIn(duration: 600.ms).slideX(),
              ),
              Container(
                height: 1000,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 80),
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Column(
                        
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.purple.withOpacity(0.1),
                                          AppColors.cardTextColor.withOpacity(0.2)
                                        ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Icon(
                                    Icons.phone,
                                    size: 26,
                                    color: AppColors.mainColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Phone Number',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  '+1 (908) 213‑5667',
                                  style: TextStyle(
                                      fontSize: 15, color: AppColors.cardTextColor),
                                )
                              ],
                            ),
          
                             const SizedBox(
                                  height: 15,
                                ),
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.purple.withOpacity(0.1),
                                          AppColors.cardTextColor.withOpacity(0.2)
                                        ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Icon(
                                    Icons.alternate_email_rounded,
                                    size: 26,
                                    color: AppColors.mainColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Email',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'support@evianoptions.com',
                                  style: TextStyle(
                                      fontSize: 15, color: AppColors.cardTextColor),
                                )
                              ],
                            ),
          
                            const SizedBox(
                                  height: 15,
                                ),
                            Column(
                              children: [
                                Container(
                                 height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.purple.withOpacity(0.1),
                                          AppColors.cardTextColor.withOpacity(0.2)
                                        ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Icon(
                                    Icons.location_on,
                                    size: 26,
                                    color: AppColors.mainColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Address',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  '68024 Great America Parkway, Suite 446, Santa\n                  Clara, California, 95054',
                                  style: TextStyle(
                                      fontSize: 15, color: AppColors.cardTextColor),
                                )
                              ],
                            ),
                          ],
                        ).animate().fadeIn(duration: 600.ms).slideX(),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      // Text(
                      //   'Welcome to our Contact Us page! We value your feedback, inquiries, and thoughts. Please feel free to get\nin touch with us using the form below or reach out to our support team directly. ',
                      //   style: TextStyle(
                      //       fontSize: 16,
                      //       color: AppColors.headerTextColor.withOpacity(0.8),
                      //       fontWeight: FontWeight.w300),
                      // ).animate().fadeIn(duration: 600.ms).slideX(),
                      // SizedBox(
                      //     height: MediaQuery.of(context).size.height * 0.03),
                      Column(
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RegistrationForm(
                                headerName: 'Email',
                                prefixIconUrl: Icons.alternate_email,
                                hintTitle: 'name@example.com',
                                options: '*',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RegistrationForm(
                                headerName: 'Name',
                                prefixIconUrl: Icons.person,
                                hintTitle: 'Username',
                                options: '*',
                              )
                            ],
                          ).animate().fadeIn(duration: 600.ms).slideX(begin: 1),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              Text(
                                'Message',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.headerTextColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '',
                                style: TextStyle(color: Colors.red, fontSize: 15),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            maxLines: 6,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor:
                                    AppColors.sidebarTextColor.withOpacity(0.1),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: const Color.fromARGB(255, 5, 24, 58)
                                            .withOpacity(0.1)),
                                    borderRadius: BorderRadius.circular(20)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.sidebarTextColor
                                            .withOpacity(0.1)),
                                    borderRadius: BorderRadius.circular(20)),
                                hintText: 'Tell us something here...',
                                hintStyle: const TextStyle(
                                    fontSize: 12, color: AppColors.sidebarTextColor)),
                          ).animate().fadeIn(duration: 600.ms).slideY(begin: 1),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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