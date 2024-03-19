import 'package:first_app_ewa/screens/category_screen.dart';
import 'package:first_app_ewa/screens/question_screen.dart';
import 'package:first_app_ewa/screens/score_screen.dart';
import 'package:first_app_ewa/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
