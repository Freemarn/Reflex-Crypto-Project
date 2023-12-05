
import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
         Image.asset('lib/assets/images/paxful.png'), Image.asset('lib/assets/images/trustwallet.png'), Image.asset('lib/assets/images/luno.png'), Image.asset('lib/assets/images/krak.png'),
      ],
    );
  }
}