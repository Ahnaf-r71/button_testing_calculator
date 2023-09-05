import 'package:flutter/material.dart';

class CalculatorInputDisplay extends StatelessWidget {
  final String inputText;

  CalculatorInputDisplay({required this.inputText});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF003366),
      padding: EdgeInsets.all(16),
      alignment: Alignment.centerRight,
      child: Text(
        inputText,
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}

