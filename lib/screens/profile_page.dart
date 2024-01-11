import 'package:crypto_bomb/screens/profile_desktop.dart';
import 'package:crypto_bomb/screens/profile_mobile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return 
          Scaffold(
            body: LayoutBuilder(builder: (context, Constraints) {
               if (Constraints.maxWidth > 700) {
                 return const ProfileDesktop();
               } else {
                 return const ProfileMobile();
               }
             }),
          );
  }
}