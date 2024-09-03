import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../auth/widget/custom_auth_screen.dart';
import '../resources/app_routes.dart';
import '../widgets/buttons.dart';
import '../widgets/custom_divider.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomAuthScreen(
      talk: "welcome",
      contentWidgets: [
        Gap(70),
        GoToButton(
            text: "welcomeSignUp", directedPage: NamedRoutes.signUpScreen),
        CustomDivider(20),
        GoToButton(
            text: "signInWelcome", directedPage: NamedRoutes.signInScreen)
      ],
    );
  }
}
