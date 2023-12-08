import 'package:crypto_bomb/components/register_fields.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cardTextColor.withOpacity(0.2),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height*0.8,
          width: MediaQuery.of(context).size.width*0.7,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    "lib/assets/images/p3.jpg", // Replace with your image URL
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Jeff paul', // Replace with the user's name
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const RegistrationForm(
                        headerName: 'Email Address ',
                        options: '*',
                        prefixIconUrl: Icons.alternate_email,
                        hintTitle: 'name@example.com'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    const RegistrationForm(
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const RegistrationForm(
                        headerName: 'Country ',
                        options: '*',
                        prefixIconUrl: Icons.location_on_outlined,
                        hintTitle: 'Choose Country'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    const RegistrationForm(
                        headerName: 'Address ',
                        prefixIconUrl: Icons.link_outlined,
                        hintTitle: 'Full address'),
                  ],
                ).animate().fadeIn(duration: 600.ms).slideY(),
          
          
                 SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
          
                Container(
                          width: MediaQuery.of(context).size.width * 0.08,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.mainColor),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Update profile',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
