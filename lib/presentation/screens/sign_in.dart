import 'package:chatting_app/app/app_localizations.dart';
import 'package:chatting_app/presentation/customs/custom_text_field.dart';
import 'package:chatting_app/presentation/customs/go_to_button.dart';
import 'package:chatting_app/presentation/resources/routes_and_navigators.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../customs/custom_splash_screen.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key, required this.newOther});
  final String newOther;
  @override
  Widget build(BuildContext context) {
    return CustomSplashScreen(
        talk: newOther.translateS(context),
        ui: Column(
          children: [
            const Gap(30),
            CustomTextField(
                hint: "username".translateS(context), textIcon: Icons.abc),
            const Gap(10),
            const Divider(),
            const Gap(10),
            CustomTextField(
                hint: "password".translateS(context),
                textIcon: Icons.remove_red_eye),
            const Gap(30),
            GoToButton(
                textThis: "enter".translateS(context),
                directedPage: NamedRoutes.home),
            const Gap(10),
            GoToButton(
                textThis: "back".translateS(context),
                directedPage: NamedRoutes.splash)
          ],
        ));
  }
}
