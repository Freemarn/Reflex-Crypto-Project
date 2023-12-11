import 'package:crypto_bomb/components/register_fields.dart';
import 'package:crypto_bomb/screens/dashboard.dart';
import 'package:crypto_bomb/screens/login_page.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({super.key});


  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
 String _email = "";
 String _password = "";
 String _username = "";
 String _fullname = "";
 String _phonenumber = "";
 String _referralId = "";
 String _country = "";


  Future<void> createUser() async {
  try {
    // Initialize Firebase Auth instance
    final FirebaseAuth auth = FirebaseAuth.instance;

    // Create a new user account
    final UserCredential userCredential = await auth.createUserWithEmailAndPassword(
      email: _email,
      password: _password,
    );

    // Get the current user's ID
    final String uid = userCredential.user!.uid;

    // Create a new document for the user in the Firestore collection
    final CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');
    await usersCollection.doc(uid).set({
      'email': _email,
      'username': _username,
      'fullname': _fullname,
      'phonenumber': _phonenumber,
      'referralId': _referralId,
      'country': _country,
      'deposited': 0.00, 
      'profit': 0.00,
      'packages': 0, 
      'activePackages': 0, 
      'refBonus': 0.00, 
      'balance': 0.00,

    });
    Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => const UserDashboard()));
  } on FirebaseAuthException catch (e) {
    // Handle Firebase authentication errors
    print("Error creating user: $e");
  } catch (e) {
    // Handle other errors
    print("Error creating user: $e");
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor.withOpacity(0.5),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.92,
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
                  ).animate().fadeIn(duration: 600.ms).slideX(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.13,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Lottie.network(
                      'https://lottie.host/3cf5189c-01fe-48c2-8f91-bd10701983d9/gz0xKQu0Lj.json',
                      repeat: true,
                      reverse: false,
                      animate: true,
                    ),
                  ),
                ],
              ).animate().fadeIn(duration: 600.ms).slideY(),

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
                        'Already have an account?',
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
                              builder: (context) => const LogUserIn()));
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
                              'Sign In',
                              style: TextStyle(
                                  fontSize: 12, color: AppColors.cardTextColor),
                            ),
                          ),
                        ),
                      )
                    ],
                  ).animate().fadeIn(duration: 600.ms).slideX(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    'welcome to cryptoflex!',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ).animate().fadeIn(duration: 600.ms).slideX(),
                  const Text(
                    'Register your account.',
                    style: TextStyle(
                      color: AppColors.cardTextColor,
                      fontSize: 13,
                    ),
                  )..animate().fadeIn(duration: 600.ms).slideX(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    children: [
                       RegistrationForm(
                          onChange: (value) => _username = value,
                          headerName: 'Username ',
                          options: '*',
                          prefixIconUrl: Icons.person_2_outlined,
                          hintTitle: 'Enter Username'),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                       RegistrationForm(
                          onChange: (value) => _fullname = value,
                          headerName: 'full name ',
                          options: '*',
                          prefixIconUrl: Icons.verified_outlined,
                          hintTitle: 'Enter fullname'),
                    ],
                  ).animate().fadeIn(duration: 600.ms).slideY(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    children: [
                       RegistrationForm(
                        onChange: (value) => _email = value,
                          headerName: 'Email Address ',
                          options: '*',
                          prefixIconUrl: Icons.alternate_email,
                          hintTitle: 'name@example.com'),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                       RegistrationForm(
                          onChange: (value) => _phonenumber = value,
                          headerName: 'Phone Number ',
                          options: '*',
                          prefixIconUrl: Icons.phone_outlined,
                          hintTitle: 'Enter phone number'),
                    ],
                  ).animate().fadeIn(duration: 600.ms).slideY(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    children: [
                       RegistrationForm(
                      onChange: (value) => _password = value,
                          headerName: 'Password ',
                          options: '*',
                          prefixIconUrl: Icons.visibility_outlined,
                          hintTitle: 'Enter Password'),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      const RegistrationForm(
                          headerName: 'Confirm Password ',
                          options: '*',
                          prefixIconUrl: Icons.visibility_outlined,
                          hintTitle: 'Confirm Password'),
                    ],
                  ).animate().fadeIn(duration: 600.ms).slideY(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    children: [
                       RegistrationForm(
               onChange: (value) => _country = value,
                          headerName: 'Country ',
                          options: '*',
                          prefixIconUrl: Icons.location_on_outlined,
                          hintTitle: 'Choose Country'),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                       RegistrationForm(
                        onChange: (value) => _referralId = value,
                          headerName: 'Referral ID ',
                          prefixIconUrl: Icons.link_outlined,
                          hintTitle: 'Referral id optional'),
                    ],
                  ).animate().fadeIn(duration: 600.ms).slideY(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () async {
                      // Create user 
                     await  createUser();
             
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
                            'Sign Up',
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
                    height: MediaQuery.of(context).size.height * 0.02,
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
                  ).animate().fadeIn(duration: 600.ms).slideY(),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
