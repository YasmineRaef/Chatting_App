import 'package:get/get.dart';

abstract class UserValidation {
  String? _validate(String value);

  String? validateAll(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Field can't be empty";
    }
    return _validate(value);
  }

  static UserValidation fromLabel(String label, {String? password}) {
    return switch (label) {
      "age" => AgeValidation(),
      "name" => NameValidation(),
      "phone" => PhoneValidation(),
      "password" => PasswordValidation(),
      "confirmPassword" => ConfirmPasswordValidation(password),
      _ => throw ArgumentError("Unknown Field type: $label")
    };
  }
}

class AgeValidation extends UserValidation {
  @override
  String? _validate(String value) {
    int? number = int.tryParse(value);
    if (number == null) {
      return 'Invalid input. Please enter your (numeric) age';
    } else if (number <= 0 || number > 100) {
      return 'Invalid age number.';
    } else if (number < 18) {
      return 'Sorry, you must be older than 18 years.';
    }
    return null;
  }
}

class NameValidation extends UserValidation {
  @override
  String? _validate(String value) {
    if (value.length < 3 || value.length > 16) {
      return 'Username must be between 3 and 16 characters';
    } else if (value.contains(' ')) {
      return 'Do not include spaces please..';
    } else if (!RegExp(r'^[a-zA-Z0-9._]+$').hasMatch(value)) {
      return 'Username can only contain letters, numbers, underscores, or periods';
    } else if (value.startsWith('_') || value.startsWith('.') || value.endsWith('_') || value.endsWith('.')) {
      return 'Username cannot start or end with an underscore or period';
    } else if (RegExp(r'[_\.]{2,}').hasMatch(value)) {
      return 'Username cannot have consecutive underscores or periods';
    } else if (!GetUtils.isUsername(value)) {
      return 'Invalid name';
    }
    return null;
  }
}

class PhoneValidation extends UserValidation {
  @override
  String? _validate(String value) {
    if (value.contains(' ')) {
      return 'Do not include spaces please..';
    } else if (value.length == 12 && !RegExp(r'^\+1\d{10}$').hasMatch(value)) {
      return 'Invalid US phone number format..ex: +11234567890'; // US
    } else if (value.length == 13 && !RegExp(r'^\+20\d{10}$').hasMatch(value)) {
      return 'Invalid Egyptian phone number format..ex: +201234567890'; // Egypt
    } else if (GetUtils.isPhoneNumber(value) && (value.length > 13 || value.length < 12)) {
      return 'Only US and Egyptian numbers are accepted..';
    } else if (!GetUtils.isPhoneNumber(value)) {
      return 'Invalid phone number..';
    }
    return null;
  }
}

class PasswordValidation extends UserValidation {
  @override
  String? _validate(String value) {
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
    return null;
  }
}

class ConfirmPasswordValidation extends UserValidation {
  final String? password;
  ConfirmPasswordValidation(this.password);
  @override
  String? _validate(String value) {
    return value == password ? null : "Passwords don't match";
  }
}
