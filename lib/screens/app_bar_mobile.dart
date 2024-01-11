import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

AppBar appBarMobile(BuildContext, context){
return AppBar(
  automaticallyImplyLeading: false,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Evian',
            style: TextStyle(
                color: AppColors.headerTextColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Options',
            style: TextStyle(
                color: AppColors.mainColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
