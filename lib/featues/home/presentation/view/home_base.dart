import 'package:accrue_clone/featues/home/presentation/view/home_screen.dart';
import 'package:accrue_clone/featues/navigation/viewmodel/bottom_nav_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeBase extends ConsumerWidget {
  const HomeBase({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexManagerProvider);
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: const [HomeScreen()],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (int index) {
            ref.read(indexManagerProvider.notifier).updateIndex(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Cards',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.save),
              label: 'Save',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inventory_sharp),
              label: 'Invest',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
          ]),
    );
  }
}
