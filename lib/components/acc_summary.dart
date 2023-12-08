import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class AccSummary extends StatelessWidget {
  final String imageUrl;
  final String headText;
  final String accBal;

  

  const AccSummary(
      {super.key,
      required this.imageUrl,
      required this.headText,
      required this.accBal,
     });

  @override
  Widget build(BuildContext context) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image(
                            image: AssetImage(imageUrl)),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            headText,
                            style: const TextStyle(
                                fontSize: 15, color: AppColors.cardTextColor),
                          ),
                         const SizedBox(
                            width: 15,
                          ),
                          Text(
                            accBal,
                            style: const TextStyle(
                                fontSize: 21, color: AppColors.headerTextColor),
                          ),
                        ],
                      )
                    ],
                  );
  }
}
