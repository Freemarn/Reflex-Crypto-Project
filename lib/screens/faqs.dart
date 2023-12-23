import 'package:crypto_bomb/components/footer_mobile.dart';
import 'package:crypto_bomb/screens/faq_desktop.dart';
import 'package:crypto_bomb/screens/faq_mobile.dart';
import 'package:flutter/material.dart';

class Faqs extends StatelessWidget {
  const Faqs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth > 1200) {
        return const FaqDesktop();
      } else {
        return const FaqMobile();
      }
    });
  }
}
