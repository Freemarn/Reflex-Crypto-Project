
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
         Image.asset('lib/assets/images/paxful.png'), Image.asset('lib/assets/images/trustwallet.png'), Image.asset('lib/assets/images/luno.png'), Image.asset('lib/assets/images/coinmama.png'),
      ],
    );
  }
}