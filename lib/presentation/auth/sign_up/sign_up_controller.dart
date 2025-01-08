import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/app_routes.dart';

class SignUpController extends GetxController {
  static late int _currentIndex;
  static late PageController _pageController;

  List<String> get pagesTitle => _pagesTitle;
  PageController get pageController => _pageController;
  List<List<({String hintText, IconData icon})>> get signUpData => _signUpData;

  @override
  void onClose() => {_pageController.dispose(), super.onClose()};

  @override
  void onInit() => {_currentIndex = 0, _pageController = PageController(), super.onInit()};

  static final List<String> _pagesTitle = ["lettyAge", "lettyPhone", "lettyPassword"];

  static const List<List<({String hintText, IconData icon})>> _signUpData = [
    [(hintText: "age", icon: Icons.cake)],
    [(hintText: "name", icon: Icons.person), (hintText: "phone", icon: Icons.phone)],
    [(hintText: "password", icon: Icons.remove_red_eye), (hintText: "confirm password", icon: Icons.remove_red_eye)],
  ];

  void goNextPage() {
    if (++_currentIndex >= _signUpData.length) Get.offNamed(NamedRoutes.signInScreen, arguments: true);
    _pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.ease);
  }

  void goPreviousPage() {
    if (--_currentIndex < 0) Get.offNamed(NamedRoutes.welcomeScreen);
    _pageController.previousPage(duration: const Duration(seconds: 1), curve: Curves.ease);
  }
}
