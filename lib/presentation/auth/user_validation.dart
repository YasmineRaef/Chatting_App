import 'package:get/get.dart';

class FormController extends GetxController {
  var username = ''.obs;
  var usernameError = ''.obs;
  var password = ''.obs;
  var passError = ''.obs;
  var age = ''.obs;
  var ageError = ''.obs;
  var phone = ''.obs;
  var phoneError = ''.obs;

  void validateUsername(String value) {
    if (value.isEmpty) {
      usernameError.value = 'Empty field! Please enter your username/name';
    } else if (!GetUtils.isUsername(value)) {
      if (value.length < 3 || value.length > 16) {
        usernameError.value = 'Username must be between 3 and 16 characters';
      } else if (!RegExp(r'^[a-zA-Z0-9._]+$').hasMatch(value)) {
        usernameError.value = 'Username can only contain letters, numbers, underscores, or periods';
      } else if (value.startsWith('_') || value.startsWith('.') || value.endsWith('_') || value.endsWith('.')) {
        usernameError.value = 'Username cannot start or end with an underscore or period';
      } else if (RegExp(r'[_\.]{2,}').hasMatch(value)) {
        usernameError.value = 'Username cannot have consecutive underscores or periods';
      } else {
        usernameError.value = 'Invalid Username';
      }
    } else {
      usernameError.value = '';
    }
  }

  void validatePassword(String value) {
    if (value.isEmpty) {
      passError.value = 'Empty field! Please enter your password';
    } else if (value.length < 6) {
      passError.value = 'Password must be more than 6 characters';
    } else if (!value.contains(RegExp(r'[A-Z]'))) {
      passError.value = 'Add at least one capital letter';
    } else if (!value.contains(RegExp(r'[a-z]'))) {
      passError.value = 'Add at least one lowercase letter';
    } else if (!value.contains(RegExp(r'[0-9]'))) {
      passError.value = 'A digit is required';
    } else if (!value.contains(RegExp(r'[!@#%^&*_?<>~,.\$"]'))) {
      passError.value = 'Special character required';
    } else {
      passError.value = '';
    }
  }
}
