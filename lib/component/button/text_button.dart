import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  const ButtonText(
      {super.key, required this.onPressed, required this.text, this.color});
  final void Function() onPressed;
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.15,
        ),
      ),
    );
  }
}
