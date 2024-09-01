import 'package:get/get.dart';

import '../auth/sign_in_screen.dart';
import '../auth/sign_up_age.dart';
import '../auth/sign_up_password.dart';
import '../auth/sign_up_phone.dart';
import '../screens/chatting_screen.dart';
import '../screens/chats_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/welcome_screen.dart';

class NamedRoutes {
  static const String welcomeScreen = "/";

  static const String signInScreen = "/signInScreen";

  static const String signUpAge = "/signUpAge";
  static const String signUpPass = "/signUpPass";
  static const String signUpPhone = "/signUpPhone";

  static const String chatsScreen = "/chatsScreen";

  static const String profileScreen = "/profileScreen";
  static const String settingsScreen = "/settingsScreen";
  static const String chattingScreen = "/chattingScreen";
}

class GeneratedRoutes {
  static List<GetPage> getRoute() {
    return [
      GetPage(name: NamedRoutes.welcomeScreen, page: () => const WelcomeScreen()),
      //
      GetPage(name: NamedRoutes.chatsScreen, page: () => const ChatsScreen()),
      //
      GetPage(name: NamedRoutes.signUpAge, page: () => const SignInAge()),
      GetPage(name: NamedRoutes.signUpPhone, page: () => const SignUpPhone()),
      GetPage(name: NamedRoutes.signUpPass, page: () => const SignUpPassword()),
      GetPage(name: NamedRoutes.signInScreen, page: () => SignInScreen(isNewMember: Get.arguments)),
      //
      GetPage(name: NamedRoutes.profileScreen, page: () => const ProfileScreen()),
      GetPage(name: NamedRoutes.settingsScreen, page: () => const SettingsScreen()),
      GetPage(name: NamedRoutes.chattingScreen, page: () => const ChattingScreen())
    ];
  }
}
