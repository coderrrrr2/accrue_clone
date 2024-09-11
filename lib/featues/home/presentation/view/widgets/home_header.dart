import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              // Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              // weight: 100,
            )),
        const Text("Having issues?"),
      ],
    );
  }
}
