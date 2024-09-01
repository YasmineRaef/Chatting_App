import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/custom_divider.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/go_to_button.dart';
import '../resources/app_routes.dart';
import 'widget/custom_auth_screen.dart';

class SignUpPhone extends StatelessWidget {
  const SignUpPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomAuthScreen(
      talk: "lettyPhone",
      contentWidgets: [
        Gap(30),
        CustomTextField(hintText: "name", textIcon: Icons.abc),
        CustomDivider(),
        CustomTextField(hintText: "phone", textIcon: Icons.numbers),
        Gap(40),
        GoToButton(text: "next", directedPage: NamedRoutes.signUpPass),
        Gap(20),
        GoToButton(text: "back", directedPage: NamedRoutes.signUpAge)
      ],
    );
  }
}
