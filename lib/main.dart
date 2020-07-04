import 'package:flutter/material.dart';

import 'package:hello_world/nubank_page.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: NuBankPage(),
    );
  }
}
