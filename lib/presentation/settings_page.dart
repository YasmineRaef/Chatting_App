import 'package:chatting_app/presentation/customs/go_to_button.dart';
import 'package:chatting_app/presentation/customs/custom_page.dart';
import 'package:chatting_app/presentation/resources/routes_and_navigators.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'customs/dark_light_button.dart';
import 'customs/language_button.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return CustomPage(
      tBody: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              const Gap(50),
              const DarkLightButton(),
              const Gap(20),
              const LanguageButton(),
              const Gap(50),
              GoToButton(textThis: "Log Out", directedPage: NamedRoutes.splash)
            ],
          ),
        ),
      ),
      appBarIcon: Icons.arrow_back,
      pageTitle: "Settings",
      directedPage: NamedRoutes.home,
    );
  }
}
