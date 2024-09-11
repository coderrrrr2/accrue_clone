import 'package:accrue_clone/featues/home/presentation/view/home_screen.dart';
import 'package:flutter/material.dart';

class HomeBase extends StatelessWidget {
  const HomeBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const IndexedStack(
        children: [HomeScreen()],
      ),
      // bottomNavigationBar: BottomNavigationBar(items: []),
    );
  }
}
