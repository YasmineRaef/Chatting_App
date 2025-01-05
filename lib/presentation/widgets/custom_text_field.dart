import 'package:chat_app/presentation/auth/user_validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/app_localizations.dart';

class CustomTextField extends StatelessWidget {
  final FormController formController = Get.put(FormController());
  final String hintText;
  final IconData textIcon;
  final String currentPage;
  final GlobalKey<FormState> formKey;

  CustomTextField({
    super.key,
    required this.hintText,
    required this.textIcon,
    required this.formKey,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: formKey,
        child: SizedBox(
          width: Get.width * .75,
          child: Obx(
            () => TextFormField(
              cursorHeight: 20,
              cursorColor: Colors.black,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black),
              onChanged: (value) {
                _validateField(value);
              },
              validator: (value) =>
                  _validateField(value!), // after checking store user credentials, for sign-in see if exists sign-up validate and store
              decoration: InputDecoration(
                prefixIcon: Icon(textIcon),
                hintText: hintText.trans(context),
                hintStyle: Theme.of(context).textTheme.bodyMedium,
                contentPadding: const EdgeInsets.symmetric(vertical: 16),
                errorText: _getErrorText(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  String? _validateField(String value) {
    // sign up
    switch (hintText) {
      case 'name':
        checkUsername(value) ? formController.usernameError.value = 'Username already exists' : formController.validateUsername(value);
      case 'createPass':
        formController.validatePassword(value);
      case 'phone':
        formController.validatePhoneNumber(value);
      case 'confirmPass':
        formController.validateConfirmPassword(value);
      case 'age':
        formController.validateAge(value);
        break;
      default:
        break;
    }
    return null;
  }

  String? _getErrorText() {
    //sign up
    switch (hintText) {
      case 'name':
        return formController.usernameError.value;
      case 'createPass':
        return formController.passError.value;
      case 'phone':
        return formController.phoneError.value;
      case 'confirmPass':
        return formController.confPassError.value;
      case 'age':
        return formController.ageError.value;
      default:
        return null;
    }
  }
}
