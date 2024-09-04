import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Widget? content;
  const AppButton(
      {super.key, required this.onPressed, this.text = "", this.content});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
      child: text.isNotEmpty
          ? Text(
              text,
              style: const TextStyle(color: Colors.white),
            )
          : content,
    );
  }
}
