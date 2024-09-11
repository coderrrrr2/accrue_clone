import 'package:accrue_clone/featues/navigation/all_pages.dart';
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
      initialRoute: AppPages.initial,
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
    );
  }
}
