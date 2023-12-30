import 'package:crypto_bomb/screens/dashboard_desktop.dart';
import 'package:crypto_bomb/screens/dashboard_mobile.dart';
import 'package:flutter/material.dart';


class UserDashboard extends StatefulWidget {
  const UserDashboard({super.key});

  @override
  State<UserDashboard> createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints){
      if(Constraints.maxWidth > 870){
        return const DashboardDesktop();
      } else {
        return const DashboardMobile();
      }
    }
    );
  }
}