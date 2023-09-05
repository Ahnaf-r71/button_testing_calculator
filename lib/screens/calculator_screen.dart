
import 'package:flutter/material.dart';
import '../widgets/calculator_input_display.dart';
import '../widgets/calculator_result_display.dart';
import '../widgets/calculator_button.dart';
import 'dart:math';



class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final TextEditingController inputController = TextEditingController();
  String inputText = '';

  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }





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
          CalculatorInputDisplay(inputText:inputText),
          SizedBox(
            height: 20,

            child: Container(
              color: Color(0xFF003366),
            ),
          ),
          CalculatorResultDisplay(resultText: inputText),
          Expanded(
            child: Container(
              color: Color(0xFF002244),
              child: Row(
                children: [

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalculatorButton(
                        label: 'v',
                        onPressed: () {

                          setState(() {
                            inputText += '';
                            inputController.text = inputText;
                          });
                        },
                      ),
                      CalculatorButton(
                        label: '(',
                        onPressed: () {

                          setState(() {
                            inputText += '(';
                            inputController.text = inputText;
                          });
                        },
                      ),
                      CalculatorButton(
                        label: '1',
                        onPressed: () {

                          setState(() {
                            inputText += '1';
                            inputController.text = inputText;
                          });
                        },
                      ),
                      CalculatorButton(     label: '4',
                        onPressed: () {

                          setState(() {
                            inputText += '4';
                            inputController.text = inputText;
                          });
                        },
                      ),
                      CalculatorButton(     label: '7',
                        onPressed: () {
                          
                          setState(() {
                            inputText += '1';
                            inputController.text = inputText;
                          });
                        },
                      ),
                      CalculatorButton(     label: '0',
                        onPressed: () {

                          setState(() {
                            inputText += '0';
                            inputController.text = inputText;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalculatorButton(     label: 'c',
                        onPressed: () {

                          setState(() {

                            inputController.text = '';
                          });
                        },
                      ),
                      CalculatorButton(     label: ')',
                        onPressed: () {

                          setState(() {
                            inputText += ')';
                            inputController.text = inputText;
                          });
                        },
                      ),
                      CalculatorButton(     label: '2',
                        onPressed: () {

                          setState(() {
                            inputText += '2';
                            inputController.text = inputText;
                          });
                        },
                      ),
                      CalculatorButton(     label: '5',
                        onPressed: () {
                          setState(() {
                            inputText += '5';
                            inputController.text = inputText;
                          });
                        },
                      ),
                      CalculatorButton(     label: '8',
                        onPressed: () {
                          setState(() {
                            inputText += '8';
                            inputController.text = inputText;
                          });
                        },
                      ),
                      CalculatorButton(     label: '00',
                        onPressed: () {

                          setState(() {
                            inputText += '00';
                            inputController.text = inputText;
                          });
                        },
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalculatorButton(
                    label: 'x',
                    onPressed: () {

                      setState(() {
                        inputText += '';
                        inputController.text = inputText;
                      });
                    },
                  ),
                      CalculatorButton(
                      label: '%',
                      onPressed: () {

              setState(() {
    inputText += '%';
    inputController.text = inputText;
    });
  },
    ),
                      CalculatorButton(
    label: '3',
    onPressed: () {

    setState(() {
    inputText += '3';
    inputController.text = inputText;
    });
    },
    ),
                      CalculatorButton(
    label: '6',
    onPressed: () {

    setState(() {
    inputText += '6';
    inputController.text = inputText;
    });
    },
    ),
                      CalculatorButton(
    label: '9',
    onPressed: () {

    setState(() {
    inputText += '9';
    inputController.text = inputText;
    });
    },
    ),
                      CalculatorButton(
    label: '.',
    onPressed: () {

    setState(() {
    inputText += '.';
    inputController.text = inputText;
    });
    },
    ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalculatorButton(
    label: '/',
    onPressed: () {

    setState(() {
    inputText += '/';
    inputController.text = inputText;
    });
    },
    ),
                      CalculatorButton(
    label: '*',
    onPressed: () {

    setState(() {
    inputText += '*';
    inputController.text = inputText;
    });
    },
    ),
                      CalculatorButton(
    label: '-',
    onPressed: () {

    setState(() {
    inputText += '-';
    inputController.text = inputText;
    });
    },
    ),
                      CalculatorButton(
    label: '+',
    onPressed: () {

    setState(() {
    inputText += '+';
    inputController.text = inputText;
    });
    },
    ),

                    Container(
                      height: MediaQuery.of(context).size.height * 0.17, // Set the height for the "=" button
                      decoration: BoxDecoration(
                        color: Color(0xFF003366),
                      ),
                      child: CalculatorButton(
    label: '=',
    onPressed: () {
  
    setState(() {
    inputText += '=';
    inputController.text = inputText; 
    });
    },
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



