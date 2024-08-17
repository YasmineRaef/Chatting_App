import 'package:chatting_app/app/app_localizations.dart';
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
      talk: "lettyPhone".translateS(context),
      ui: Column(
        children: [
          const Gap(30),
          CustomTextField(
              hint: "name".translateS(context), textIcon: Icons.abc),
          const Gap(10),
          const SeparateWidgets(),
          const Gap(10),
          CustomTextField(
              hint: "phone".translateS(context), textIcon: Icons.numbers),
          const Gap(40),
          GoToButton(
              textThis: "next".translateS(context),
              directedPage: NamedRoutes.signUpPass),
          const Gap(20),
          GoToButton(
              textThis: "back".translateS(context),
              directedPage: NamedRoutes.signUpAge)
        ],
      ),
    );
  }
}
