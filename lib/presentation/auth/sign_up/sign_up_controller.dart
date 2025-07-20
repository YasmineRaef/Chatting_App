import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/app_constants.dart';
import '../../resources/app_routes.dart';
import '../base/controller.dart';
import '../base/user_validation.dart';

class SignUpController extends AuthController {
  SignUpController() : super(["age", "name", "phone", "password", "confirmPassword"]);

  PageController? _pageController;
  int _currentIndex = 0;

  List<String> get pagesTitle => AppConstants.signUpPagesTitle;
  List<List<({String hintText, IconData icon})>> get signUpData => AppConstants.signUpData;
  PageController get pageController => _pageController ??= PageController();

  @override
  void onInit() {
    _currentIndex = 0;
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    _pageController?.dispose();
    disposeControllers();
    super.onClose();
  }

  @override
  Future<bool> authenticate() async {
    bool hasError = false;

    final passwordValue = getFieldValue("password");
    final currentFields = signUpData[_currentIndex].map((e) => e.hintText).toList();

    for (String field in currentFields) {
      final value = getFieldValue(field);
      final validator = UserValidation.fromLabel(field, password: passwordValue);
      final error = validator.validateAll(value);

      if (error != null) {
        Get.snackbar("Invalid Input", "$field: $error");
        hasError = true;
      }
    }

    return !hasError;
  }

  void goNextPage() {
    if (++_currentIndex >= signUpData.length) Get.offNamed(NamedRoutes.signInScreen, arguments: true);
    pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.ease);
  }

  void goPreviousPage() {
    if (--_currentIndex < 0) {
      Get.offNamed(NamedRoutes.welcomeScreen);
    } else {
      pageController.previousPage(duration: const Duration(seconds: 1), curve: Curves.ease);
    }
  }
}
