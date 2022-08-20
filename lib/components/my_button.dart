import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color colors;
  final VoidCallback onPress;

  const MyButton({
    Key? key,
    required this.title,
    this.colors = Colors.orange,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
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
      ),
    );
  }
}
