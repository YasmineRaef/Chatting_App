import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppLocalizations {
  final Locale? locale;
  late Map<String, String> _localizedStrings;

  AppLocalizations({this.locale});

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  static AppLocalizations? of(BuildContext context) => Localizations.of<AppLocalizations>(context, AppLocalizations);

  Future loadJsonLanguage() async {
    String jsonString = await rootBundle.loadString("assets/lang/${locale!.languageCode}.json");

    Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedStrings = jsonMap.map((key, value) => MapEntry(key, value.toString()));
  }

  String translate(String key) => _localizedStrings[key] ?? key;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ar'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = AppLocalizations(locale: locale);
    await localizations.loadJsonLanguage();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) => false;
}

Iterable<LocalizationsDelegate<dynamic>> localizationDelegates = const [
  AppLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate
];

Locale? localResolutionCallback(deviceLocale, supportedLocales) {
  for (var locale in supportedLocales) {
    if (deviceLocale != null && deviceLocale.languageCode == locale.languageCode) {
      return deviceLocale;
    }
  }
  return supportedLocales.first;
}

extension Tr on String {
  String tr(BuildContext context) => AppLocalizations.of(context)!.translate(this);
}
