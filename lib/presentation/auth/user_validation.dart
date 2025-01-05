import 'package:get/get.dart';

List<Map<String, String>> userCredentials = [
  {'username': 'raefEL72@', 'pass': 'Relsay9#&'},
  {'username': 'yasmineR72', 'pass': '01Jan2004#'}
];

void storeUsers(String user, String password) {
  Map<String, String> addUser = {'username': user, 'pass': password};
  userCredentials.add(addUser);
}

bool checkUsername(String user) {
  return userCredentials.any((data) => data['username'] == user);
}

bool checkInputs(String user, String password) {
  return userCredentials.any((data) => data['username'] == user && data['pass'] == password);
}

class FormController extends GetxController {
  var username = ''.obs;
  var usernameError = RxnString();
  var password = ''.obs;
  var passError = RxnString();
  var confPassword = ''.obs;
  var confPassError = RxnString();
  var age = ''.obs;
  var ageError = RxnString();
  var phone = ''.obs;
  var phoneError = RxnString();

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
      username.value = value;
      usernameError.value = null;
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
      password.value = value;
      passError.value = null;
    }
  }

  void validateConfirmPassword(String value) {
    if (value.isEmpty) {
      confPassError.value = 'Empty field! Please confirm your password';
    } else if (value != password.value) {
      confPassError.value = 'Passwords do not match';
    } else {
      confPassword.value = value;
      confPassError.value = null;
    }
  }

  void validatePhoneNumber(String value) {
    if (value.isEmpty) {
      phoneError.value = 'Empty field! Please enter your phone number';
    } else if (value.contains(' ')) {
      phoneError.value = 'Do not include spaces please..';
    } else if (value.length == 12 && !RegExp(r'^\+1\d{10}$').hasMatch(value)) {
      //US
      phoneError.value = 'Invalid US phone number format..ex: +11234567890';
    } else if (value.length == 13 && !RegExp(r'^\+20[1-9]\d{8}$').hasMatch(value)) {
      //EGYPT
      phoneError.value = 'Invalid Egyptian phone number format..ex: +201234567890';
    } else if (GetUtils.isPhoneNumber(value)) {
      phoneError.value = 'Only US and Egyptian numbers are accepted..';
    } else if (!GetUtils.isPhoneNumber(value)) {
      phoneError.value = 'Invalid phone number..';
    } else {
      phone.value = value;
      phoneError.value = null;
    }
  }

  void validateAge(String input) {
    int? number = int.tryParse(input);
    if (number == null) {
      ageError.value = 'Invalid input. Please enter a number.';
    } else if (number <= 0 || number > 100) {
      ageError.value = 'Invalid age number. Age must be between 1 and 100.';
    } else if (number < 18) {
      ageError.value = 'Sorry, you must be older than 18 years.';
    } else {
      age.value = number.toString();
      ageError.value = null;
    }
  }
}
