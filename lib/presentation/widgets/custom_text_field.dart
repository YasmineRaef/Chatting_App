import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/app_localizations.dart';
import '../auth/user_validation.dart';

class CustomTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  CustomTextField({super.key, required this.hintText, required this.icon});

  final formController = Get.put(FormController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: TextFormField(
        cursorHeight: 20,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText.trans(context),
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
        ),
        validator: (value) => formController.validation(value!, hintText),
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black),
      ),
    );
  }
}
