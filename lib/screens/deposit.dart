import 'package:crypto_bomb/screens/deposit_desktop.dart';
import 'package:crypto_bomb/screens/deposit_mobile.dart';
import 'package:flutter/material.dart';

class DepositPage extends StatelessWidget {
  const DepositPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
          Scaffold(
            body: LayoutBuilder(builder: (context, Constraints) {
               if (Constraints.maxWidth > 950) {
                 return const DepositDesktop();
               } else {
                 return const DepositMobile();
               }
             }),
          );
  }
}