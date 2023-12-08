import 'package:crypto_bomb/components/register_fields.dart';
import 'package:crypto_bomb/screens/dashboard.dart';
import 'package:crypto_bomb/screens/register_page.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LogUserIn extends StatefulWidget {
  const LogUserIn({super.key});

  @override
  State<LogUserIn> createState() => _LogUserInState();
}

class _LogUserInState extends State<LogUserIn> {
  String _email = "";
  String _password = "";
  Future<void> _login(String email, String password) async {
  try {
    await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    Navigator.of(context).push(MaterialPageRoute(
   builder: (context) => const UserDashboard()));
  } on FirebaseAuthException catch (e) {
    // Handle error
  }
}

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor.withOpacity(0.5),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.9,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Row(children: [
              //SizedBox(width: MediaQuery.of(context).size.width * 0.08,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Crypto',
                        style: TextStyle(
                            color: AppColors.headerTextColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Flex',
                        style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ).animate().fadeIn(duration: 600.ms).slideY(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.11,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Lottie.network(
                      'https://lottie.host/88097747-9ea3-4c47-b735-18c91343ab6c/l9VNXChAim.json',
                      //repeat: true,
                      reverse: false,
                      animate: true,
                    ),
                  ).animate().fadeIn(duration: 600.ms).slideY(),
                ],
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: AppColors.cardTextColor,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.04,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const RegisterUser()));
                        },
                        child: Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width * 0.09,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: AppColors.cardTextColor),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 12, color: AppColors.cardTextColor),
                            ),
                          ),
                        ),
                      )
                    ],
                  ).animate().fadeIn(duration: 600.ms).slideX(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  const Text(
                    'welcome back!',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ).animate().fadeIn(duration: 600.ms).slideX(),
                  const Text(
                    'login with your personal info to stay connected.',
                    style: TextStyle(
                      color: AppColors.cardTextColor,
                      fontSize: 13,
                    ),
                  ).animate().fadeIn(duration: 600.ms).slideX(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Column(
                    children: [
                      const RegistrationForm(
                        
                        onChange: (value) => _email = value,
                          headerName: 'Email ',
                          options: '*',
                          prefixIconUrl: Icons.alternate_email,
                          hintTitle: 'name@example.com'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      const RegistrationForm(
                        onChange: (value) => _password = value,
                          headerName: 'Password ',
                          options: '*',
                          prefixIconUrl: Icons.visibility_outlined,
                          hintTitle: 'Enter correct password'),
                    ],
                  ).animate().fadeIn(duration: 600.ms).slideY(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  GestureDetector(
                    onTap: () async {
                     await _login(_email,_password);
                   
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.mainColor),
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
                    ).animate().fadeIn(duration: 600.ms).slideY(),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.17,
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.copyright_outlined,
                        size: 10,
                        color: AppColors.cardTextColor,
                      ),
                      Text(
                        'Copyright 2023 cryptoflex All rights reserved',
                        style: TextStyle(
                            fontSize: 12, color: AppColors.cardTextColor),
                      )
                    ],
                  )..animate().fadeIn(duration: 600.ms).slideY(),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
