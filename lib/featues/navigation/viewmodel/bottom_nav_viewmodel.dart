import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavIndexManager extends StateNotifier<int> {
  BottomNavIndexManager() : super(0);

  void updateIndex(int index) {
    state = index;
  }
}

final indexManagerProvider =
    StateNotifierProvider<BottomNavIndexManager, int>((ref) {
  return BottomNavIndexManager();
});
