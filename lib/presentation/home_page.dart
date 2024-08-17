import 'package:chatting_app/app/app_localizations.dart';
import 'package:chatting_app/presentation/customs/custom_page.dart';
import 'package:chatting_app/presentation/resources/routes_and_navigators.dart';
import 'package:chatting_app/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPage(
      tBody: const HomeScreen(),
      appBarIcon: Icons.settings,
      pageTitle: "appName".translateS(context),
      directedPage: NamedRoutes.settings,
    );
  }
}
