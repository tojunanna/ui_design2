import 'package:flutter/material.dart';
import 'package:ui_flutter/pages/home_page.dart';

import '';
void main() { runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(brightness: Brightness.dark,
      primarySwatch: Colors.cyan,
      ),
    );
  }
}
