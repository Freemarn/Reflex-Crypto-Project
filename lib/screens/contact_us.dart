
import 'package:crypto_bomb/screens/contact_desktop.dart';
import 'package:crypto_bomb/screens/contact_mobile.dart';


import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return 
          Scaffold(
            body: LayoutBuilder(builder: (context, Constraints) {
               if (Constraints.maxWidth > 1000) {
                 return const ContactDesktop();
               } else {
                 return const ContactMobile();
               }
             }),
          );
         
  }
}
