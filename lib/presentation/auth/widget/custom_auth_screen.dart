import 'package:chatting_app/app/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../resources/app_assets.dart';
import '../../resources/theme_manager.dart';

class CustomAuthScreen extends StatelessWidget {
  final String talk;
  final List<Widget> contentWidgets;
  const CustomAuthScreen(
      {super.key, required this.talk, required this.contentWidgets});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Gap(20),
              Image(
                height: 300,
                image: AppTheme.themeMode == ThemeMode.light
                    ? const AssetImage(AppAssets.lettuceLight)
                    : const AssetImage(AppAssets.lettuceDark),
              ),
              const Gap(20),
              Text(talk.translateS(context),
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold)),
              ...contentWidgets,
            ],
          ),
        ),
      ),
    );
  }
}
