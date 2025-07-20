import 'package:chat_app/presentation/screens/add_new_contact.dart';
import 'package:chat_app/presentation/screens/splash_screen.dart';
import 'package:get/get.dart';

import '../auth/sign_in/sign_in_screen.dart';
import '../auth/sign_up/sign_up_screen.dart';
import '../auth/widget/welcome_screen.dart';
import '../screens/chats_screen.dart';
import '../screens/chatting_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/settings_screen.dart';
import 'app_bindings.dart';

class NamedRoutes {
  static const splashScreen = "/splashScreen";
  static const welcomeScreen = "/welcomeScreen";

  static const signInScreen = "/signInScreen";
  static const signUpScreen = "/signUpScreen";

  static const chatsScreen = "/chatsScreen";

  static const profileScreen = "/profileScreen";
  static const settingsScreen = "/settingsScreen";
  static const chattingScreen = "/chattingScreen";

  static const addNewContact = "/addNewContact";
}

class GeneratedRoutes {
  static List<GetPage> getRoute() {
    return [
      GetPage(name: NamedRoutes.splashScreen, page: () => const SplashScreen()),
      GetPage(name: NamedRoutes.welcomeScreen, page: () => const WelcomeScreen()),
      //
      GetPage(name: NamedRoutes.chatsScreen, page: () => const ChatsScreen()),

      GetPage(name: NamedRoutes.signInScreen, page: () => SignInScreen(isNewMember: Get.arguments)),
      GetPage(name: NamedRoutes.signUpScreen, page: () => SignUpScreen(), binding: SignUpBinding()),

      GetPage(name: NamedRoutes.profileScreen, page: () => ProfileScreen()),
      GetPage(name: NamedRoutes.settingsScreen, page: () => const SettingsScreen()),
      GetPage(name: NamedRoutes.chattingScreen, page: () => const ChattingScreen(imgProfileUrl: '', title: '', lastMessage: '')),

      GetPage(name: NamedRoutes.addNewContact, page: () => const AddNewContact())
    ];
  }
}
