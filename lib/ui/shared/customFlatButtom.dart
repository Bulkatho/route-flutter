import 'package:flutter/material.dart';


class CustomFlatButtom extends StatelessWidget {

  final String text;
  final Color color;
  final Function onPressed;

  const CustomFlatButtom({
    super.key, 
    required this.text, 
    required this.onPressed,
    this.color = Colors.purple,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(primary: this.color),
      onPressed: () => this.onPressed(),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(this.text),
      )
    );
  }
}