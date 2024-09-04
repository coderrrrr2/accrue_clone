import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AppNavigator {
  /// Navigate to a new screen.
  static void to(Widget page, {dynamic arguments}) {
    Get.to(page, arguments: arguments);
  }

  /// Navigate to a named route.
  static void toNamed(String routeName, {dynamic arguments}) {
    Get.toNamed(routeName, arguments: arguments);
  }

  /// Replace the current screen with a new one.
  static void off(Widget page, {dynamic arguments}) {
    Get.off(page, arguments: arguments);
  }

  /// Replace the current screen with a named route.
  static void offNamed(String routeName, {dynamic arguments}) {
    Get.offNamed(routeName, arguments: arguments);
  }

  /// Remove all previous screens and push a new one.
  static void offAll(Widget page, {dynamic arguments}) {
    Get.offAll(page, arguments: arguments);
  }

  /// Remove all previous screens and push a named route.
  static void offAllNamed(String routeName, {dynamic arguments}) {
    Get.offAllNamed(routeName, arguments: arguments);
  }

  /// Navigate back to the previous screen.
  static void back({dynamic result}) {
    Get.back(result: result);
  }

  /// Navigate back to the previous screen with additional result data.
  static void backWithResult(dynamic result) {
    Get.back(result: result);
  }

  /// Check if there is a previous screen to go back to.
  static bool canPop() {
    return Get.key.currentState?.canPop() ?? false;
  }

  /// Go back to the first screen in the stack.
  static void popUntilFirst() {
    Get.until((route) => route.isFirst);
  }

  /// Navigate to a screen and clear the history up to the given predicate.
  static void popUntil(RoutePredicate predicate) {
    Get.until(predicate);
  }
}
