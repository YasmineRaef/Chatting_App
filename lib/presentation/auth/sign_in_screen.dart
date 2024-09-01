import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/custom_divider.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/go_to_button.dart';
import '../resources/app_routes.dart';
import 'widget/custom_auth_screen.dart';

class SignInScreen extends StatelessWidget {
  final bool isNewMember;
  const SignInScreen({super.key, required this.isNewMember});

  @override
  Widget build(BuildContext context) {
    return CustomAuthScreen(
      talk: isNewMember ? "Activate your new account" : "Welcome Back",
      contentWidgets: const [
        Gap(30),
        CustomTextField(hintText: "username", textIcon: Icons.abc),
        CustomDivider(),
        CustomTextField(hintText: "password", textIcon: Icons.remove_red_eye),
        Gap(30),
        GoToButton(text: "enter", directedPage: NamedRoutes.chatsScreen),
        Gap(10),
        GoToButton(text: "back", directedPage: NamedRoutes.welcomeScreen)
      ],
    );
  }
}
