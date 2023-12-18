import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class AchieveCard extends StatelessWidget {
  final String headerText;
  final String bodyText;
  final IconData iconUrl;
  const AchieveCard({super.key, required this.headerText, required this.bodyText, required this.iconUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.035,
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
          child: Icon(
            iconUrl,
            size: 26,
            color: AppColors.mainColor,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headerText,
              style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.headerTextColor,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              bodyText,
              style: const TextStyle(fontSize: 13, color: AppColors.cardTextColor),
            )
          ],
        )
      ],
    );
  }
}

