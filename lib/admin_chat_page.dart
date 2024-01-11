import 'package:flutter/material.dart';

import 'package:flutter_tawk/flutter_tawk.dart';

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
        body: Tawk(
          directChatLink:
              'https://tawk.to/chat/659f14e70ff6374032bea544/1hjqmjaj2',
          visitor: TawkVisitor(
            name: 'Josh lee',
            email: 'josh@gmail.com',
          ),
          onLoad: () {
            print('Hello Tawk!');
          },
          onLinkTap: (String url) {
            print(url);
          },
          placeholder: const Center(
            child: Text('Loading...'),
          ),
        ),
      ),
    );
  }
}
