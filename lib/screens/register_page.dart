
import 'package:crypto_bomb/screens/register_desktop.dart';
import 'package:crypto_bomb/screens/register_mobile.dart';
import 'package:flutter/material.dart';

class RegisterUserHere extends StatelessWidget {
  const RegisterUserHere({super.key});

  @override
  Widget build(BuildContext context) {
     return 
          Scaffold(
            body: LayoutBuilder(builder: (context, Constraints) {
               if (Constraints.maxWidth > 1100) {
                 return const RegisterDesktop();
               } else {
                 return const RegisterMobile();
               }
             }),
          );
  }  
}