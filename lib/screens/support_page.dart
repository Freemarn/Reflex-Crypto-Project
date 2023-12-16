
import 'package:clipboard/clipboard.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

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
            padding: const EdgeInsets.all(16.0),
            child: Column(
          
              children: [
                // Header
                const Text(
                  'Welcome to Our Support Page!',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.headerTextColor,
                  ),
                ),
                const SizedBox(height: 20.0),
          
                // Lottie Animation
                SizedBox(
                  height: 200.0,
                  child: Lottie.network(
                    'https://lottie.host/1e2cd061-adc7-4d04-b126-a623a5ed6366/AXvFQ9xjMG.json',
                    repeat: true,
                    reverse: true,
                    animate: true,
                  ),
                ),
                const SizedBox(height: 20.0),
          
                // Support Information
                  
                  
                Container(
                height: MediaQuery.of(context).size.height*0.3,
                 width: MediaQuery.of(context).size.width*0.4,
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.mainColor, width: 1)
                 ),
                 child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     const Text(
                  'If you need assistance or have any questions, feel free to contact us:',
                  style: TextStyle(fontSize: 13.0, color: AppColors.cardTextColor),
                ),
                const SizedBox(height: 10.0),
               
                  
                  
                GestureDetector(
                              onTap: () {
                                FlutterClipboard.copy(
                                    'support@cryptoflex.com');
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text(
                                      'email copied to clipboard!',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    backgroundColor:
                                        Colors.lightGreen.withOpacity(0.5),
                                    dismissDirection: DismissDirection.vertical,
                                    // duration: Durations.medium2,
                                  ),
                                );
                              },
                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.cardTextColor.withOpacity(0.2),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'support@cryptoflex.com',
                                        style: TextStyle(
                                          color: AppColors.headerTextColor
                                              .withOpacity(0.7),
                                          fontSize: 12,
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Icon(
                                        Icons.copy,
                                        color: AppColors.headerTextColor
                                            .withOpacity(0.7),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                  
                           
          const SizedBox(height: 10.0),
                  
                             GestureDetector(
                              onTap: () {
                                FlutterClipboard.copy(
                                    'Phone: +1 (123) 456-7890');
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text(
                                      'phone copied to clipboard!',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    backgroundColor:
                                        Colors.lightGreen.withOpacity(0.5),
                                    dismissDirection: DismissDirection.vertical,
                                    // duration: Durations.medium2,
                                  ),
                                );
                              },
                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.cardTextColor.withOpacity(0.2),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Phone: +1 (123) 456-7890',
                                        style: TextStyle(
                                          color: AppColors.headerTextColor
                                              .withOpacity(0.7),
                                          fontSize: 12,
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Icon(
                                        Icons.copy,
                                        color: AppColors.headerTextColor
                                            .withOpacity(0.7),
                                      ),
                                    ],
                                  ),
                                ),
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