import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../resources/app_routes.dart';
import '../widgets/buttons.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_text_field.dart';
import 'widget/custom_auth_screen.dart';

class SignInScreen extends StatelessWidget {
  final bool isNewMember;
  const SignInScreen({super.key, required this.isNewMember});

  static final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return CustomAuthScreen(
      talk: isNewMember ? "Activate your new account" : "Welcome Back",
      contentWidgets: [
        Gap(30),
        Form(
          key: formKey,
          child: Column(
            children: [
              CustomTextField(hintText: "name", icon: Icons.person),
              CustomDivider(),
              CustomTextField(hintText: "password", icon: Icons.remove_red_eye),
              Gap(30),
              GoToButton(text: "enter", directedPage: (formKey.currentState?.validate() ?? false) ? NamedRoutes.chatsScreen : ''),
            ],
          ),
        ),
        Gap(10),
        GoToButton(text: "back", directedPage: NamedRoutes.welcomeScreen)
      ],
    );
  }
}
