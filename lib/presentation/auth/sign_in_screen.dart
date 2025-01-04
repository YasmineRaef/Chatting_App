import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../resources/app_routes.dart';
import '../widgets/buttons.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_text_field.dart';
import 'widget/custom_auth_screen.dart';

class SignInScreen extends StatelessWidget {
  final bool isNewMember;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  SignInScreen({super.key, required this.isNewMember});

  @override
  Widget build(BuildContext context) {
    return CustomAuthScreen(
      talk: isNewMember ? "Activate your new account" : "Welcome Back",
      contentWidgets: [
        Gap(30),
        CustomTextField(
          hintText: "username",
          textIcon: Icons.person,
          formKey: formKey,
          currentPage: 'Sign-In',
        ),
        CustomDivider(),
        CustomTextField(
          hintText: "password",
          textIcon: Icons.remove_red_eye,
          formKey: formKey,
          currentPage: 'Sign-In',
        ),
        Gap(30),
        GoToButton(text: "enter", directedPage: (formKey.currentState!.validate())? NamedRoutes.chatsScreen:''),
        Gap(10),
        GoToButton(text: "back", directedPage: NamedRoutes.welcomeScreen)
      ],
    );
  }
}
