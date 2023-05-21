import 'package:flutter/material.dart';
import 'package:will_bank/screens/home.dart';

import 'themes/my_themes.dart';

void main() {
  runApp(const GenericBank());
}

class GenericBank extends StatelessWidget {
  const GenericBank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GenericBank',
      theme: MyTheme,
      home: const Home(),
    );
  }
}
