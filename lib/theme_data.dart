import 'package:accrue_clone/shared/widgets/app_color.dart';
import 'package:flutter/material.dart';

final colorScheme = ColorScheme.fromSeed(seedColor: primaryColor);

final appTheme = ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: scaffoldBackGroundColor),
    colorScheme: colorScheme,
    scaffoldBackgroundColor: scaffoldBackGroundColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: scaffoldBackGroundColor,
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        showSelectedLabels: true,
        showUnselectedLabels: true));
