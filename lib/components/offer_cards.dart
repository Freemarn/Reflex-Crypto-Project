import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OfferCard extends StatelessWidget {
  final String gitUrl;
  final String blurb;
  const OfferCard({super.key, required this.gitUrl, required this.blurb});

  @override
  Widget build(BuildContext context) {
    return    Column(
                        children: [
                          
                          SizedBox(
                           height: MediaQuery.of(context).size.height * 0.3,
                            child: Lottie.network(
                              gitUrl,
                              
                              repeat: true,
                              reverse: false,
                              animate: true,
                            ),
                          ),
                          Text(
                            blurb,
                            
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color:AppColors.headerTextColor,
                            ),
                          )
                        ],
                      );
  }
}