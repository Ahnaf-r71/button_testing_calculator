import 'package:flutter/material.dart';

class CalculatorResultDisplay extends StatelessWidget {
  final String resultText;

  CalculatorResultDisplay({required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF003366),
      padding: EdgeInsets.all(16),
      alignment: Alignment.centerRight,
      child: Text(
        resultText,
        style: TextStyle(fontSize: 36, color: Colors.white),
      ),
    );
  }
}
