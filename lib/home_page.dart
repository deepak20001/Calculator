import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'components/my_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userInput = '';
  var result = '';

  @override
  Widget build(BuildContext context) {
//-----------------------------------------------------------
    void equalPress() {
      String finalUserInput = userInput;
      finalUserInput = userInput.replaceAll("x", "*");
      Parser p = Parser();
      Expression exp = p.parse(finalUserInput);
      ContextModel contextmodel = ContextModel();

      double eval = exp.evaluate(EvaluationType.REAL, contextmodel);
      result = eval.toString();
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
//-----------------------------------------------------------------
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          userInput.toString(),
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          result.toString(),
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
//--------------------------------------------------------------------
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(
                          title: "AC",
                          onPress: () {
                            userInput = "";
                            result = "";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "+/-",
                          onPress: () {
                            userInput += "+/-";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "%",
                          onPress: () {
                            userInput += "%";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "/",
                          colors: Colors.grey,
                          onPress: () {
                            userInput += "/";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "7",
                          onPress: () {
                            userInput += "7";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "8",
                          onPress: () {
                            userInput += "8";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "0",
                          onPress: () {
                            userInput += "0";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "x",
                          colors: Colors.grey,
                          onPress: () {
                            userInput += "x";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "4",
                          onPress: () {
                            userInput += "4";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "5",
                          onPress: () {
                            userInput += "5";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "6",
                          onPress: () {
                            userInput += "6";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "-",
                          colors: Colors.grey,
                          onPress: () {
                            userInput += "-";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "1",
                          onPress: () {
                            userInput += "1";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "2",
                          onPress: () {
                            userInput += "2";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "3",
                          onPress: () {
                            userInput += "3";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "+",
                          colors: Colors.grey,
                          onPress: () {
                            userInput += "+";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "0",
                          onPress: () {
                            userInput += "0";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: ".",
                          onPress: () {
                            userInput += ".";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "DEL",
                          onPress: () {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "=",
                          colors: Colors.grey,
                          onPress: () {
                            equalPress();
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
