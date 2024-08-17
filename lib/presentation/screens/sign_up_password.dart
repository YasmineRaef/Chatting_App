import 'package:chatting_app/presentation/customs/go_to_button.dart';
import 'package:chatting_app/presentation/customs/custom_splash_screen.dart';
import 'package:chatting_app/presentation/customs/custom_text_field.dart';
import 'package:chatting_app/presentation/customs/separate_widgets.dart';
import 'package:chatting_app/presentation/resources/routes_and_navigators.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUpPassword extends StatelessWidget {
  const SignUpPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSplashScreen(
        talk: "A new member, WOW",
        ui: Column(children: [
          const Gap(30),
          const CustomTextField(
              hint: "Create a password", textIcon: Icons.remove_red_eye),
          const Gap(20),
          const SeparateWidgets(),
          const Gap(20),
          const CustomTextField(
              hint: "Confirm your password", textIcon: Icons.remove_red_eye),
          const Gap(30),
          GoToButton(textThis: "SignUp", directedPage: NamedRoutes.signIn),
          const Gap(20),
          GoToButton(textThis: "Back", directedPage: NamedRoutes.signUpPhone)
        ]));
  }
}
