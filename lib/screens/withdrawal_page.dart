import 'package:crypto_bomb/components/withdraw_desktop.dart';
import 'package:crypto_bomb/screens/withdraw_mobile.dart';
import 'package:flutter/material.dart';

class WithdrawalPage extends StatelessWidget {
  const WithdrawalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  
          Scaffold(
            body: LayoutBuilder(builder: (context, Constraints) {
               if (Constraints.maxWidth >  900) {
                 return const WithdrawDesktop();
               } else {
                 return const WithdrawMobile();
               }
             }),
          );
  }
}