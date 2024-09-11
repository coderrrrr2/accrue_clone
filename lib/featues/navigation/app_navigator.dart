import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AppNavigator {
  /// Push a new named route onto the stack.
  static void pushRoute(String routeName, {dynamic arguments}) {
    Get.toNamed(routeName, arguments: arguments);
  }

  /// Replace the current route with a new named route.
  static void replaceRoute(String routeName, {dynamic arguments}) {
    Get.offNamed(routeName, arguments: arguments);
  }

  /// Clear the entire route stack and push a new named route.
  static void replaceAllRoutes(String routeName, {dynamic arguments}) {
    Get.offAllNamed(routeName, arguments: arguments);
  }

  /// Navigate back to the previous route.
  static void popRoute({dynamic result}) {
    Get.back(result: result);
  }

  /// Check if there is a previous route to pop to.
  static bool canPopRoute() {
    return Get.key.currentState?.canPop() ?? false;
  }

  /// Pop routes until the first route in the stack.
  static void popUntilFirstRoute() {
    Get.until((route) => route.isFirst);
  }

  /// Pop routes until the specified predicate is met.
  static void popUntilRoute(RoutePredicate predicate) {
    Get.until(predicate);
  }
}
