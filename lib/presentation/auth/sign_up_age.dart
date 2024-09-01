import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/custom_text_field.dart';
import '../widgets/go_to_button.dart';
import '../resources/app_routes.dart';
import 'widget/custom_auth_screen.dart';

class SignInAge extends StatelessWidget {
  const SignInAge({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomAuthScreen(
      talk: "lettyAge",
      contentWidgets: [
        Gap(30),
        CustomTextField(hintText: "age", textIcon: Icons.cake),
        Gap(20),
        GoToButton(text: "next", directedPage: NamedRoutes.signUpPhone),
        Gap(20),
        GoToButton(text: "back", directedPage: NamedRoutes.welcomeScreen)
      ],
    );
  }
}
