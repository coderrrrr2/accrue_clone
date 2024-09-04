import 'package:accrue_clone/featues/auth/view/sign_in_screen.dart';
import 'package:accrue_clone/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        home: const SignInScreen());
  }
}
