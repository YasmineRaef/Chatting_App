import 'package:get/get.dart';

import '../auth/sign_in_screen.dart';
import '../auth/sign_up/sign_up_screen.dart';
import '../auth/welcome_screen.dart';
import '../screens/chats_screen.dart';
import '../screens/chatting_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/settings_screen.dart';
import 'app_bindings.dart';

class NamedRoutes {
  static const welcomeScreen = "/welcome";

  static const signInScreen = "/sign-in";
  static const signUpScreen = "/sign-up";

  static const chatsScreen = "/chats";

  static const profileScreen = "/profile";
  static const settingsScreen = "/settings";
  static const chattingScreen = "/chatting";
}

class GeneratedRoutes {
  static List<GetPage> getRoute() {
    return [
      GetPage(name: NamedRoutes.welcomeScreen, page: () => const WelcomeScreen()),
      //
      GetPage(name: NamedRoutes.chatsScreen, page: () => const ChatsScreen()),

      GetPage(name: NamedRoutes.signInScreen, page: () => SignInScreen(isNewMember: Get.arguments)),
      GetPage(name: NamedRoutes.signUpScreen, page: () => const SignUpScreen(), binding: SignUpBinding()),

      GetPage(name: NamedRoutes.profileScreen, page: () => const ProfileScreen()),
      GetPage(name: NamedRoutes.settingsScreen, page: () => const SettingsScreen()),
      GetPage(name: NamedRoutes.chattingScreen, page: () => const ChattingScreen()),
    ];
  }
}
