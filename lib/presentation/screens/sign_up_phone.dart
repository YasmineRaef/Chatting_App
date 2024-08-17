import 'package:chatting_app/presentation/customs/custom_splash_screen.dart';
import 'package:chatting_app/presentation/customs/custom_text_field.dart';
import 'package:chatting_app/presentation/customs/go_to_button.dart';
import 'package:chatting_app/presentation/customs/separate_widgets.dart';
import 'package:chatting_app/presentation/resources/routes_and_navigators.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUpPhone extends StatelessWidget {
  const SignUpPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSplashScreen(
      talk: "Nice to meet you",
      ui: Column(
        children: [
          const Gap(30),
          const CustomTextField(hint: "Enter your name", textIcon: Icons.abc),
          const Gap(10),
          const SeparateWidgets(),
          const Gap(10),
          const CustomTextField(
              hint: "Enter your phone number", textIcon: Icons.numbers),
          const Gap(40),
          GoToButton(textThis: "Next", directedPage: NamedRoutes.signUpPass),
          const Gap(20),
          GoToButton(textThis: "Back", directedPage: NamedRoutes.signUpAge)
        ],
      ),
    );
  }
}
