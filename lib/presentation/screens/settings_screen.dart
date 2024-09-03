import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../resources/app_routes.dart';
import '../widgets/buttons.dart';
import '../widgets/custom_screen.dart';
import '../widgets/language_button.dart';
import '../widgets/theme_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScreen(
      pageTitle: "settings",
      appBarIcon: Icons.arrow_back,
      directedPage: NamedRoutes.chatsScreen,
      //
      contentBody: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Gap(50),
              ThemeButton(),
              Gap(20),
              LanguageButton(),
              Gap(50),
              GoToButton(
                  text: "logOut", directedPage: NamedRoutes.welcomeScreen)
            ],
          ),
        ),
      ),
    );
  }
}
