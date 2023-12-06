import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset('lib/assets/images/binance.png'),
        Image.asset('lib/assets/images/trustwallet.png'),
        Image.asset('lib/assets/images/luno.png'),
        Image.asset('lib/assets/images/coinmama.png'),
      ],
    );
  }
}
