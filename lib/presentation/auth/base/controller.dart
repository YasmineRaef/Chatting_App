import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AuthController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final Map<String, TextEditingController> controllers = {};

  AuthController(List<String> fields) {
    for (String field in fields) {
      controllers[field] = TextEditingController();
    }
  }

  String getFieldValue(String field) => controllers[field]?.text.trim() ?? '';

  void disposeControllers() {
    for (var controller in controllers.values) {
      controller.dispose();
    }
  }

  Future<bool> authenticate();
}
