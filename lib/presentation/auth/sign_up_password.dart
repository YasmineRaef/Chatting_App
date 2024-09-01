import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/custom_divider.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/go_to_button.dart';
import '../resources/app_routes.dart';
import 'widget/custom_auth_screen.dart';

class SignUpPassword extends StatelessWidget {
  const SignUpPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomAuthScreen(
      talk: "lettyPassword",
      contentWidgets: [
        Gap(30),
        CustomTextField(hintText: "createPass", textIcon: Icons.remove_red_eye),
        CustomDivider(20),
        CustomTextField(hintText: "confirmPass", textIcon: Icons.remove_red_eye),
        Gap(30),
        GoToButton(text: "signIn", directedPage: NamedRoutes.signInScreen),
        Gap(20),
        GoToButton(text: "back", directedPage: NamedRoutes.signUpPhone)
      ],
    );
  }
}
