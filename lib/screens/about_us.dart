import 'package:crypto_bomb/screens/about_desktop.dart';
import 'package:crypto_bomb/screens/about_mobile.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: LayoutBuilder(builder: (context, Constraints) {
        if (Constraints.maxWidth > 1000) {
          return const AboutDesktop();
        } else {
          return const AboutMobile();
        }
      }),
    );
  }
}
