import 'package:chatting_app/presentation/profile_page.dart';
import 'package:chatting_app/presentation/screens/sign_in.dart';
import 'package:chatting_app/presentation/screens/sign_up_age.dart';
import 'package:chatting_app/presentation/screens/sign_up_password.dart';
import 'package:chatting_app/presentation/screens/sign_up_phone.dart';
import 'package:chatting_app/presentation/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/app.dart';
import '../home_page.dart';
import '../screens/splash_screen.dart';

class NamedRoutes {
  static String material = "/material";
  static String home = "/home";
  static String splash = "/splash";
  static String signIn = "/signIn";
  static String signUpPass = "/signUpPass";
  static String signUpPhone = "/signUpPhone";
  static String settings = "/settings";
  static String profile = "/profile";
  static String signUpAge = "/signUpAge";
}

class GeneratedRoutes {
  static List<GetPage> getRoute() => [
        GetPage(name: NamedRoutes.material, page: () => const App()),
        GetPage(name: NamedRoutes.home, page: () => const MyHomePage()),
        GetPage(name: NamedRoutes.splash, page: () => const SplashScreen()),
        GetPage(
            name: NamedRoutes.signIn,
            page: () => const SignIn(newOther: "Welcome Back")),
        GetPage(
            name: NamedRoutes.signUpPass, page: () => const SignUpPassword()),
        GetPage(name: NamedRoutes.signUpPhone, page: () => const SignUpPhone()),
        GetPage(name: NamedRoutes.profile, page: () => const ProfilePage()),
        GetPage(name: NamedRoutes.settings, page: () => const SettingsPage()),
        GetPage(name: NamedRoutes.signUpAge, page: () => const SignInAge())
      ];
}

extension MyNavigator on BuildContext {
  static goToPage(Widget page) {
    return Get.off(() => page);
  }
}
