import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/get_storage.dart';

class AppTheme {
  static ThemeMode themeMode = currentThemeMode;
  static ThemeData getLightTheme() {
    return ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(230, 225, 210, 1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
        ),
        dividerTheme: const DividerThemeData(
            color: Colors.grey, thickness: 1.5, indent: 80, endIndent: 80),
        textTheme: const TextTheme(
            bodySmall: TextStyle(fontSize: 18, color: Colors.white),
            bodyMedium: TextStyle(fontSize: 20),
            bodyLarge: TextStyle(fontSize: 24, color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white));
  }

  static ThemeData getDarkTheme() {
    return ThemeData(
        scaffoldBackgroundColor: const Color(0xFF9E9E9E),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
        ),
        dividerTheme: const DividerThemeData(
            color: Colors.black, thickness: 1, indent: 80, endIndent: 80),
        textTheme: const TextTheme(
            bodySmall: TextStyle(fontSize: 18, color: Colors.black),
            bodyMedium: TextStyle(fontSize: 20, color: Colors.black),
            bodyLarge: TextStyle(fontSize: 24, color: Colors.black)),
        iconTheme: const IconThemeData(color: Colors.black));
  }

  static void changeThemeMode() => Get.changeThemeMode(themeMode =
      (themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light));
}
