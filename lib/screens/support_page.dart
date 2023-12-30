import 'package:crypto_bomb/screens/support_desktop.dart';
import 'package:crypto_bomb/screens/support_mobile.dart';
import 'package:flutter/material.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  @override
  Widget build(BuildContext context) {
   return 
          Scaffold(
            body: LayoutBuilder(builder: (context, Constraints) {
               if (Constraints.maxWidth > 700) {
                 return const SupportDesktop();
               } else {
                 return const SupportMobile();
               }
             }),
          );
  }
}