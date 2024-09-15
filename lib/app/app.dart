import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/get_storage.dart';
import '../presentation/resources/app_routes.dart';
import '../presentation/resources/theme_manager.dart';
import 'app_localizations.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //
      theme: AppTheme.getLightTheme(),
      darkTheme: AppTheme.getDarkTheme(),
      themeMode: Storage.getAppThemeMode(),
      //
      getPages: GeneratedRoutes.getRoute(),
      initialRoute: NamedRoutes.welcomeScreen,
      //
      locale: Get.locale,
      localizationsDelegates: localizationDelegates,
      localeResolutionCallback: localResolutionCallback,
      supportedLocales: const [Locale('en'), Locale('ar')],
    );
  }
}
