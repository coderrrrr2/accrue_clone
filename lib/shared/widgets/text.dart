import 'package:flutter/material.dart';

class LeadingText extends StatelessWidget {
  final String text;
  const LeadingText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}

class ClickableText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final VoidCallback? onTap;

  const ClickableText({
    super.key,
    required this.text,
    this.style,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: style?.copyWith(
          color: onTap != null ? Theme.of(context).primaryColor : null,
          decoration: onTap != null ? TextDecoration.underline : null,
        ),
      ),
    );
  }
}
