import 'package:flutter/material.dart';
import 'package:intercom_flutter/intercom_flutter.dart';

class AdminChat extends StatelessWidget {
  const AdminChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chat Admin'),
          backgroundColor: const Color(0XFFF7931E),
          elevation: 0,
        ),
        body: Center(
          child: TextButton(
            child: Text('Open Intercom'),
            onPressed: () async {
              await Intercom.instance.displayMessenger();
            },
          ),
        ),
      ),
    );
  }
}
