import 'package:flutter/material.dart';
import 'package:ui_challenge1/screens/detail_screen.dart';
import 'package:ui_challenge1/screens/home_page.dart';
import 'package:ui_challenge1/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beautify The Brand',

      home: LoginScreen(),
    );
  }
}

