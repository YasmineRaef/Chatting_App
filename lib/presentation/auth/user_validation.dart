import 'package:get/get.dart';

class FormController extends GetxController {
  String? validation(String value, String label) {
    if (value.isEmpty) {
      return 'Empty field! Please enter your $label'; // name - password - phone number - age
    } else {
      // Username
      if (label == 'name') {
        if (value.length < 3 || value.length > 16) {
          return 'Username must be between 3 and 16 characters';
        } else if (RegExp(r'^[a-zA-Z0-9._]+$').hasMatch(value)) {
          return 'Username can only contain letters, numbers, underscores, or periods';
        } else if (value.startsWith('_') || value.startsWith('.') || value.endsWith('_') || value.endsWith('.')) {
          return 'Username cannot start or end with an underscore or period';
        } else if (RegExp(r'[_\.]{2,}').hasMatch(value)) {
          return 'Username cannot have consecutive underscores or periods';
        } else if (!GetUtils.isUsername(value)) {
          return 'Invalid name';
        }
      }

      // Password
      if (label == 'password') {
        if (value.length < 6) {
          return 'Password must be more than 6 characters';
        } else if (!value.contains(RegExp(r'[A-Z]'))) {
          return 'Add at least one capital letter';
        } else if (!value.contains(RegExp(r'[a-z]'))) {
          return 'Add at least one lowercase letter';
        } else if (!value.contains(RegExp(r'[0-9]'))) {
          return 'A digit is required';
        } else if (!value.contains(RegExp(r'[!@#%^&*_?<>~,.\$"]'))) {
          return 'Special character required';
        }
      }

      // Phone Number
      if (label == 'phone') {
        if (value.contains(' ')) {
          return 'Do not include spaces please..';
        } else if (value.length == 12 && !RegExp(r'^\+1\d{10}$').hasMatch(value)) {
          return 'Invalid US phone number format..ex: +11234567890'; // US
        } else if (value.length == 13 && !RegExp(r'^\+20[1-9]\d{8}$').hasMatch(value)) {
          return 'Invalid Egyptian phone number format..ex: +201234567890'; // Egypt
        } else if (GetUtils.isPhoneNumber(value)) {
          return 'Only US and Egyptian numbers are accepted..';
        } else if (!GetUtils.isPhoneNumber(value)) {
          return 'Invalid phone number..';
        }
      }

      // Age
      if (label == 'age') {
        int? number = int.tryParse(value);
        if (number == null) {
          return 'Invalid input. Please enter your age';
        } else if (number <= 0 || number > 100) {
          return 'Invalid age number. Age must be between 1 and 100.';
        } else if (number < 18) {
          return 'Sorry, you must be older than 18 years.';
        }
      }
    }

    return null;
  }
}
