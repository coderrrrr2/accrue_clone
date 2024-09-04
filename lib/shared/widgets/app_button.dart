import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? textSize;
  final Widget? content;
  const AppButton(
      {super.key,
      required this.onPressed,
      this.text = "",
      this.content,
      this.textSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Colors.black,
          minimumSize: const Size(600, 70)),
      child: text.isNotEmpty
          ? Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: textSize ?? 19,
                  fontWeight: FontWeight.bold),
            )
          : content,
    );
  }
}
