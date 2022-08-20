import 'package:flutter/material.dart';

import 'components/my_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
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
                    children: [
                      Text(
                        userInput.toString(),
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Text(
                        userInput.toString(),
                        style: TextStyle(fontSize: 30, color: Colors.white),
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
                        ),
                        MyButton(
                          title: "+/-",
                        ),
                        MyButton(
                          title: "%",
                        ),
                        MyButton(
                          title: "/",
                          colors: Colors.grey,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "7",
                        ),
                        MyButton(
                          title: "8",
                        ),
                        MyButton(
                          title: "0",
                        ),
                        MyButton(
                          title: "x",
                          colors: Colors.grey,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "4",
                        ),
                        MyButton(
                          title: "5",
                        ),
                        MyButton(
                          title: "6",
                        ),
                        MyButton(
                          title: "-",
                          colors: Colors.grey,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "1",
                        ),
                        MyButton(
                          title: "2",
                        ),
                        MyButton(
                          title: "3",
                        ),
                        MyButton(
                          title: "+",
                          colors: Colors.grey,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "0",
                        ),
                        MyButton(
                          title: ".",
                        ),
                        MyButton(
                          title: "DEL",
                        ),
                        MyButton(
                          title: "=",
                          colors: Colors.grey,
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
