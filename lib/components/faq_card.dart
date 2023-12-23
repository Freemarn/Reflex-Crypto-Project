import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class FaqCard extends StatelessWidget {
  final String bodyText;
  final String headerText;
  const FaqCard({super.key, required this.bodyText, required this.headerText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.circle_outlined,
          color: AppColors.mainColor,
          size: 13,
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 70,
          width: 2,
          color: AppColors.mainColor,
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headerText,
              style: const TextStyle(
                color: AppColors.headerTextColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              bodyText,
              style: const TextStyle(
                color: AppColors.headerTextColor,
                fontSize: 13,
              ),
            ),
          ],
        )
      ],
    );
  }
}
