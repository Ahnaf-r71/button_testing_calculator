
import 'package:flutter/material.dart';
import '../widgets/calculator_input_display.dart';
import '../widgets/calculator_result_display.dart';
import '../widgets/calculator_button.dart';


class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: PopupMenuButton(
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text('Ahnaf'),
              ),
            ];
          },
        ),
        title: Align(
          alignment: Alignment.centerRight,
          child: Text('Calculator'),
        ),
      ),
      body: Column(
        children: [
          CalculatorInputDisplay(inputText: '123'),
          SizedBox(
            height: 20,

            child: Container(
              color: Color(0xFF003366),
            ),
          ),
          CalculatorResultDisplay(resultText: '456'),
          Expanded(
            child: Container(
              color: Color(0xFF002244),
              child: Row(
                children: [

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalculatorButton(label: 'v', onPressed: () {}),
                      CalculatorButton(label: '(', onPressed: () {}),
                      CalculatorButton(label: '1', onPressed: () {}),
                      CalculatorButton(label: '4', onPressed: () {}),
                      CalculatorButton(label: '7', onPressed: () {}),
                      CalculatorButton(label: '0', onPressed: () {}),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalculatorButton(label: 'c', onPressed: () {}),
                      CalculatorButton(label: ')', onPressed: () {}),
                      CalculatorButton(label: '2', onPressed: () {}),
                      CalculatorButton(label: '5', onPressed: () {}),
                      CalculatorButton(label: '8', onPressed: () {}),
                      CalculatorButton(label: '00', onPressed: () {}),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalculatorButton(label: 'x', onPressed: () {}),
                      CalculatorButton(label: '%', onPressed: () {}),
                      CalculatorButton(label: '3', onPressed: () {}),
                      CalculatorButton(label: '6', onPressed: () {}),
                      CalculatorButton(label: '9', onPressed: () {}),
                      CalculatorButton(label: '.', onPressed: () {}),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalculatorButton(label: '/', onPressed: () {}),
                      CalculatorButton(label: '*', onPressed: () {}),
                      CalculatorButton(label: '-', onPressed: () {}),
                      CalculatorButton(label: '+', onPressed: () {}),

                    Container(
                      height: MediaQuery.of(context).size.height * 0.17, // Set the height for the "=" button
                      decoration: BoxDecoration(
                        color: Color(0xFF003366),
                      ),
                      child: CalculatorButton(
                        label: '=',
                        onPressed: () {},
                      ),
                    ),
                    ],
                  ),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



