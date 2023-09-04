import 'package:flutter/material.dart';
import 'screens/calculator_screen.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(
        primaryColor: Color(0xFF002244),
        backgroundColor: Color(0xFF002244),
        scaffoldBackgroundColor: Color(0xFF002244),
        appBarTheme: AppBarTheme(
          color: Color(0xFF002244),
        ),
      ),
      home: CalculatorScreen(),
    );
  }
}

