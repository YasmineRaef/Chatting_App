import 'package:chatting_app/app/app_localizations.dart';
import 'package:chatting_app/presentation/customs/custom_splash_screen.dart';
import 'package:chatting_app/presentation/customs/custom_text_field.dart';
import 'package:chatting_app/presentation/customs/go_to_button.dart';
import 'package:chatting_app/presentation/resources/routes_and_navigators.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUpPassword extends StatelessWidget {
  const SignUpPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSplashScreen(
        talk: "lettyPassword".translateS(context),
        ui: Column(children: [
          const Gap(30),
          CustomTextField(
              hint: "createPass".translateS(context),
              textIcon: Icons.remove_red_eye),
          const Gap(20),
          const Divider(),
          const Gap(20),
          CustomTextField(
              hint: "confirmPass".translateS(context),
              textIcon: Icons.remove_red_eye),
          const Gap(30),
          GoToButton(
              textThis: "signUp".translateS(context),
              directedPage: NamedRoutes.signInNew),
          const Gap(20),
          GoToButton(
              textThis: "back".translateS(context),
              directedPage: NamedRoutes.signUpPhone)
        ]));
  }
}
