import 'package:crypto_bomb/screens/register_desktop.dart';
import 'package:crypto_bomb/screens/register_mobile.dart';
import 'package:flutter/material.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({super.key});

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints){
      if(Constraints.maxWidth > 1100){
        return const RegisterDesktop();
      } else {
        return const RegisterMobile();
      }
    }
    );
  }
}