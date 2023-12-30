import 'package:crypto_bomb/components/withdraw_desktop.dart';
import 'package:crypto_bomb/screens/withdraw_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WithdrawalPage extends StatefulWidget {
  const WithdrawalPage({super.key});

  @override
  State<WithdrawalPage> createState() => _WithdrawalPageState();
}

class _WithdrawalPageState extends State<WithdrawalPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints){
      if(Constraints.maxWidth > 850){
        return const WithdrawDesktop();
      } else {
        return const WithdrawMobile();
      }
    }
    );
  }
}