import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color colors;

  const MyButton({
    Key? key,
    required this.title,
    this.colors = Colors.orange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        child: Container(
          height: 80,
          decoration: BoxDecoration(shape: BoxShape.circle, color: colors),
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
