import 'package:crypto_bomb/screens/dash_page_desktop.dart';
import 'package:crypto_bomb/screens/dash_page_mobile.dart';
import 'package:flutter/material.dart';


class DashboardPage extends StatefulWidget {
  static const String routeName = "dashboard";
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints){
      if(Constraints.maxWidth > 870){
        return const DashPageDesktop();
      } else {
        return const DashPageMobile();
      }
    }
    );
  }
}