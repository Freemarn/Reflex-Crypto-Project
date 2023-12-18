import 'package:crypto_bomb/components/my_app_bar.dart';

import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: myAppBar(context),
    );
  }
}