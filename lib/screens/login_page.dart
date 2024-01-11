import 'package:crypto_bomb/screens/dashboard.dart';
import 'package:crypto_bomb/screens/login_desktop.dart';
import 'package:crypto_bomb/screens/login_mobile.dart';
import 'package:crypto_bomb/utilis/app_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogUserIn extends StatefulWidget {
  const LogUserIn({super.key});

  @override
  State<LogUserIn> createState() => _LogUserInState();
}

class _LogUserInState extends State<LogUserIn> {
  final String _email = "";
  final String _password = "";

  Future<void> _login(String email, String password) async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    try {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(child: CircularProgressIndicator()),
      );

      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.snackbar("Message", "Login successfull");
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const UserDashboard()));
    } on FirebaseAuthException {
      // Handle error
      Navigator.pop(context);
      // ignore: use_build_context_synchronously
      showErrorDialog(context, "Error", "login failed");
    }
  }

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
