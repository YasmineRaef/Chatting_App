import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../app/app_localizations.dart';
import '../../data/get_storage.dart';
import '../resources/app_routes.dart';
import '../widgets/buttons.dart';
import '../widgets/custom_screen.dart';

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
              GoToButton(text: "logOut", directedPage: NamedRoutes.welcomeScreen)
            ],
          ),
        ),
      ),
    );
  }
}

class ThemeButton extends StatefulWidget {
  const ThemeButton({super.key});

  @override
  State<ThemeButton> createState() => _ThemeButtonState();
}

class _ThemeButtonState extends State<ThemeButton> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => setState(() => Storage.toggleAppThemeMode()),
      title: Text((Storage.isDarkMode() ? "light" : "dark").tr(context)),
      trailing: Icon(Storage.isDarkMode() ? Icons.light_mode : Icons.dark_mode, color: Colors.black),
    );
  }
}

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("language".tr(context)),
      onTap: () => Storage.toggleAppLanguageCode(),
      trailing: const Icon(Icons.language, color: Colors.black),
    );
  }
}
