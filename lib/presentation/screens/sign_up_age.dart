import 'package:chatting_app/presentation/customs/go_to_button.dart';
import 'package:chatting_app/presentation/customs/custom_splash_screen.dart';
import 'package:chatting_app/presentation/resources/routes_and_navigators.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../customs/custom_text_field.dart';

class SignInAge extends StatelessWidget {
  const SignInAge({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSplashScreen(
        talk: "How old are you",
        ui: Column(
          children: [
            const Gap(30),
            const CustomTextField(
                hint: "Enter your age here", textIcon: Icons.cake),
            const Gap(20),
            GoToButton(textThis: "Next", directedPage: NamedRoutes.signUpPhone),
            Gap(20),
            GoToButton(textThis: "Back", directedPage: NamedRoutes.splash)
          ],
        ));
  }
}
