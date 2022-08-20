import 'package:flutter/material.dart';

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
                        result.toString(),
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
                          onPress: () {},
                        ),
                        MyButton(
                          title: "+/-",
                          onPress: () {},
                        ),
                        MyButton(
                          title: "%",
                          onPress: () {},
                        ),
                        MyButton(
                          title: "/",
                          colors: Colors.grey,
                          onPress: () {},
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "7",
                          onPress: () {},
                        ),
                        MyButton(
                          title: "8",
                          onPress: () {},
                        ),
                        MyButton(
                          title: "0",
                          onPress: () {},
                        ),
                        MyButton(
                          title: "x",
                          colors: Colors.grey,
                          onPress: () {},
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "4",
                          onPress: () {},
                        ),
                        MyButton(
                          title: "5",
                          onPress: () {},
                        ),
                        MyButton(
                          title: "6",
                          onPress: () {},
                        ),
                        MyButton(
                          title: "-",
                          colors: Colors.grey,
                          onPress: () {},
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "1",
                          onPress: () {},
                        ),
                        MyButton(
                          title: "2",
                          onPress: () {},
                        ),
                        MyButton(
                          title: "3",
                          onPress: () {},
                        ),
                        MyButton(
                          title: "+",
                          colors: Colors.grey,
                          onPress: () {},
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: "0",
                          onPress: () {},
                        ),
                        MyButton(
                          title: ".",
                          onPress: () {},
                        ),
                        MyButton(
                          title: "DEL",
                          onPress: () {},
                        ),
                        MyButton(
                          title: "=",
                          colors: Colors.grey,
                          onPress: () {},
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
