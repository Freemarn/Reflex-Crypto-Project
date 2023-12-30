import 'package:crypto_bomb/screens/login_desktop.dart';
import 'package:crypto_bomb/screens/login_mobile.dart';
import 'package:flutter/material.dart';

class LogUserIn extends StatefulWidget {
  const LogUserIn({super.key});

  @override
  State<LogUserIn> createState() => _LogUserInState();
}

class _LogUserInState extends State<LogUserIn> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth > 970) {
        return const LoginDesktop();
      } else {
        return const LoginMobile();
      }
    });
  }
}