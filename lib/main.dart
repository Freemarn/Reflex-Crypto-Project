import 'package:crypto_bomb/admin%20%20screen/admin_dashboard.dart';
import 'package:crypto_bomb/firebase_options.dart';
import 'package:crypto_bomb/main_desktop1.dart';
import 'package:crypto_bomb/main_mobile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'screens/dashboard_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  EasyLoading.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EvianOptions',
      initialRoute: '/',
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) {
              switch (routeSettings.name) {
                case AdminPanel.routeName:
                  return const AdminPanel();
                case DashboardPage.routeName:
                  return const DashboardPage();
                default:
                  return const MyHomePage(title: 'EvianOptions');
              }
            });
      },
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'EvianOptions'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animationController.forward();

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reset();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, Constraints) {
        if (Constraints.maxWidth > 1150) {
          return const MainDesktop();
        } else {
          return const MainMobile();
        }
      }),
    );
  }
}
