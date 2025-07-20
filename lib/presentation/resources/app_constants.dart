import 'package:flutter/material.dart';

class AppConstants {
  static final List<String> signUpPagesTitle = ["lettyAge", "lettyPhone", "lettyPassword"];

  static const List<List<({String hintText, IconData icon})>> signUpData = [
    [
      (hintText: "age", icon: Icons.cake),
    ],
    [
      (
        hintText: "name",
        icon: Icons.person,
      ),
      (hintText: "phone", icon: Icons.phone)
    ],
    [(hintText: "password", icon: Icons.remove_red_eye), (hintText: "confirmPassword", icon: Icons.remove_red_eye)],
  ];
}
