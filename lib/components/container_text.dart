import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class ContainerText extends StatelessWidget {
  final String containerText;
  const ContainerText({super.key, required this.containerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
            width: 1, color: AppColors.cardTextColor.withOpacity(0.2)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
                containerText,
                style: const TextStyle(
          fontSize: 14,
          color: AppColors.headerTextColor,
          fontWeight: FontWeight.w600),
              ),
      ),
    );
  }
}
