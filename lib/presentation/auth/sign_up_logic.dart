// Temporary Class
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../resources/app_routes.dart';

class SignUpLogic {
  static int _currentIndex = 0;
  static final pageController = PageController();

  static final List<String> pagesTitle = ["lettyAge", "lettyPhone", "lettyPassword"];

  static final List<List<({String hintText, IconData icon})>> signUpData = [
    [(hintText: "age", icon: Icons.cake)],
    [(hintText: "name", icon: Icons.abc), (hintText: "phone", icon: Icons.numbers)],
    [(hintText: "createPass", icon: Icons.remove_red_eye), (hintText: "confirmPass", icon: Icons.remove_red_eye)],
  ];

  static void goNextPage() {
    if (++_currentIndex >= signUpData.length) Get.offNamed(NamedRoutes.signInScreen, arguments: true);
    pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.ease);
  }

  static void goPreviousPage() {
    if (--_currentIndex < 0) Get.offNamed(NamedRoutes.welcomeScreen);
    pageController.previousPage(duration: const Duration(seconds: 1), curve: Curves.ease);
  }
}
