import 'package:get/get.dart';

import '../auth/sign_in_screen.dart';
import '../screens/chats_screen.dart';
import '../screens/chatting_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/sign_up_screen.dart';
import '../screens/welcome_screen.dart';

class NamedRoutes {
  static const String welcomeScreen = "/";

  static const String signInScreen = "/signInScreen";

  static const String chatsScreen = "/chatsScreen";

  static const String profileScreen = "/profileScreen";
  static const String settingsScreen = "/settingsScreen";
  static const String chattingScreen = "/chattingScreen";

  static const String signUpScreen = "/signUpScreen";
}

class GeneratedRoutes {
  static List<GetPage> getRoute() {
    return [
      GetPage(
          name: NamedRoutes.welcomeScreen, page: () => const WelcomeScreen()),
      //
      GetPage(name: NamedRoutes.chatsScreen, page: () => const ChatsScreen()),
      //
      GetPage(name: NamedRoutes.signUpScreen, page: () => const SignUpScreen()),
      //
      GetPage(
          name: NamedRoutes.signInScreen,
          page: () => SignInScreen(isNewMember: Get.arguments)),
      //
      GetPage(
          name: NamedRoutes.profileScreen, page: () => const ProfileScreen()),
      GetPage(
          name: NamedRoutes.settingsScreen, page: () => const SettingsScreen()),
      GetPage(
          name: NamedRoutes.chattingScreen, page: () => const ChattingScreen()),
    ];
  }
}
