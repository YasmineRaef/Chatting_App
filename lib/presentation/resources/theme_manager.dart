import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getLightTheme() {
    return ThemeData(
      scaffoldBackgroundColor: const Color.fromRGBO(230, 225, 210, 1),

      // AppBar
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.teal,
      ),

      //
      dividerTheme: const DividerThemeData(color: Colors.grey, thickness: 1.5, indent: 80, endIndent: 80),

      //
      textTheme: const TextTheme(
        bodySmall: TextStyle(fontSize: 18, color: Colors.white),
        bodyMedium: TextStyle(fontSize: 20),
        bodyLarge: TextStyle(fontSize: 24, color: Colors.white),
      ),

      //
      iconTheme: const IconThemeData(color: Colors.white),

      // TextFormField
      inputDecorationTheme: const InputDecorationTheme(
        prefixIconColor: Colors.black,
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal), borderRadius: BorderRadius.all(Radius.circular(20))),
      ),

      // ElevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(300, 50),
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          shape: const StadiumBorder(side: BorderSide(color: Colors.black)),
        ),
      ),

      // ListTile
      listTileTheme: const ListTileThemeData(
        shape: RoundedRectangleBorder(side: BorderSide(color: Colors.teal, width: 2), borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }

  static ThemeData getDarkTheme() {
    return ThemeData(
      scaffoldBackgroundColor: const Color(0xFF9E9E9E),

      // AppBar
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.teal,
      ),
      dividerTheme: const DividerThemeData(color: Colors.black, thickness: 1, indent: 80, endIndent: 80),
      //
      textTheme: const TextTheme(
        bodySmall: TextStyle(fontSize: 18, color: Colors.black),
        bodyLarge: TextStyle(fontSize: 24, color: Colors.black),
        bodyMedium: TextStyle(fontSize: 20, color: Colors.black),
      ),
      //
      iconTheme: const IconThemeData(color: Colors.black),

      // TextFormField
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        prefixIconColor: Colors.black,
        fillColor: Color.fromRGBO(224, 224, 224, 1),
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal), borderRadius: BorderRadius.all(Radius.circular(20))),
      ),

      // ElevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(300, 50),
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          shape: const StadiumBorder(side: BorderSide(color: Colors.black)),
        ),
      ),

      // ListTile
      listTileTheme: const ListTileThemeData(
        shape: RoundedRectangleBorder(side: BorderSide(color: Colors.teal, width: 2), borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
