import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPrssed;
  MyButton(
      {super.key,
      required this.text,
      required this.onPrssed,
      required Null Function() onPressed}) {}

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPrssed,
      color: Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}
