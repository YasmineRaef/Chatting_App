import 'package:chat_app/presentation/auth/base/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../base/user_validation.dart';

class SignInController extends AuthController {
  SignInController() : super(["name", "password"]);

  @override
  Future<bool> authenticate() async {
    final name = getFieldValue("name");
    final password = getFieldValue("password");

    final nameError = NameValidation().validateAll(name);
    final passwordError = PasswordValidation().validateAll(password);

    if (nameError != null || passwordError != null) {
      final message =
          (nameError == "Field can't be empty" || passwordError == "Field can't be empty") ? "Fields are required" : "Incorrect username or password";

      Get.snackbar("Authentication Failed", message,
          snackPosition: SnackPosition.BOTTOM, duration: const Duration(seconds: 2), backgroundColor: Colors.red);
      return false;
    }

    return true;
  }
}
