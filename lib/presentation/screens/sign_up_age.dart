import 'package:chatting_app/app/app_localizations.dart';
import 'package:chatting_app/presentation/customs/custom_splash_screen.dart';
import 'package:chatting_app/presentation/customs/go_to_button.dart';
import 'package:chatting_app/presentation/resources/routes_and_navigators.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../customs/custom_text_field.dart';

class SignInAge extends StatelessWidget {
  const SignInAge({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSplashScreen(
        talk: "lettyAge".translateS(context),
        ui: Column(
          children: [
            const Gap(30),
            CustomTextField(
                hint: "age".translateS(context), textIcon: Icons.cake),
            const Gap(20),
            GoToButton(
                textThis: "next".translateS(context),
                directedPage: NamedRoutes.signUpPhone),
            const Gap(20),
            GoToButton(
                textThis: "back".translateS(context),
                directedPage: NamedRoutes.splash)
          ],
        ));
  }
}
