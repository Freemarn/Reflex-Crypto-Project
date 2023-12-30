import 'package:crypto_bomb/screens/deposit_desktop.dart';
import 'package:crypto_bomb/screens/deposit_mobile.dart';
import 'package:flutter/material.dart';

class DepositPage extends StatefulWidget {
  const DepositPage({super.key});

  @override
  State<DepositPage> createState() => _DepositPageState();
}

class _DepositPageState extends State<DepositPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth > 900) {
        return const DepositDesktop();
      } else {
        return const DepositMobile();
      }
    });
  }
}
