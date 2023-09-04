import 'package:flutter/material.dart';

class CalculatorDisplay extends StatelessWidget {
  final String displayText;

  CalculatorDisplay({required this.displayText});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF003366),
      padding: EdgeInsets.all(16),
      alignment: Alignment.centerRight,
      child: Text(
        displayText,
        style: TextStyle(fontSize: 36, color: Colors.white),
      ),
    );
  }
}