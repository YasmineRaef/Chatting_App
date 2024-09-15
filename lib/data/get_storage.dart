import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

const String _isDarkModeKey = "IS_DARK_MODE_KEY";
const String _languageCodeKey = "LANGUAGE_CODE_KEY";

class Storage {
  Storage._();

  static final GetStorage _storage = GetStorage();

  static bool isDarkMode() => _storage.read(_isDarkModeKey) ?? false;

  static String getAppLanguageCode() => _storage.read(_languageCodeKey) ?? "en";

  static ThemeMode getAppThemeMode() => isDarkMode() ? ThemeMode.dark : ThemeMode.light;

  static void toggleAppLanguageCode() {
    Get.updateLocale(Locale(getAppLanguageCode() == "en" ? "ar" : "en"));
    _storage.write(_languageCodeKey, getAppLanguageCode() == "en" ? "ar" : "en");
  }

  static void toggleAppThemeMode() {
    Get.changeThemeMode(isDarkMode() ? ThemeMode.light : ThemeMode.dark);
    _storage.write(_isDarkModeKey, !isDarkMode());
  }
}
