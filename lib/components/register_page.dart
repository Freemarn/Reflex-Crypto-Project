import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({super.key});

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height*0.8,
        width: MediaQuery.of(context).size.width* 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.mainColor
        ),
        child: const Row(
          children: [
            Column(
              children: [
                
               
              ],
            ),  


            Column(
              children: [
                // Container(
                //   height: MediaQuery.of(context).size.height*0.2
                // )
              ],
            )
          ]
          ),
      ),
    );
  }
}
