import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final Function() onPressed;

  CalculatorButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Color(0xFF002244),
          padding: EdgeInsets.all(16),
          foregroundColor: Colors.white,
          textStyle: TextStyle(fontSize: 24),
        ),
        child: Text(label),
      ),
    );
  }
}
