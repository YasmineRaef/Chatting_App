import 'package:chatting_app/presentation/customs/custom_splash_screen.dart';
import 'package:chatting_app/presentation/customs/separate_widgets.dart';
import 'package:chatting_app/presentation/resources/routes_and_navigators.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../customs/go_to_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSplashScreen(
      talk: "Hi ! I'm Letty the lettuce",
      ui: Column(children: [
        const Gap(70),
        GoToButton(
            textThis: "New Here? Let's set you up",
            directedPage: NamedRoutes.signUpAge),
        const Gap(20),
        const SeparateWidgets(),
        const Gap(20),
        GoToButton(
            textThis: "Already have an account? Sign in",
            directedPage: NamedRoutes.signIn)
      ]),
    );
  }
}
