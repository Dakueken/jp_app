import 'package:flutter/material.dart';

import 'package:jp_app/src/features/start/startpage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: jPTheme(), home: StartPage());
  }

  ThemeData jPTheme() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 18,
          fontFamily: "SanFrancisco",
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          fontSize: 16,
          fontFamily: "SanFrancisco",
          color: Colors.white,
        ),
        displaySmall: TextStyle(
          fontSize: 14,
          fontFamily: "SanFrancisco",
          color: Colors.white,
        ),
        titleMedium: TextStyle(
          fontSize: 20.0,
          fontFamily: "Inter",
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 28.0,
          fontFamily: "Inter",
          color: Colors.white,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontFamily: "SanFrancisco",
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          fontSize: 12,
          fontFamily: "SanFrancisco",
          color: Colors.black,
        ),
      ),
    );
  }
}
