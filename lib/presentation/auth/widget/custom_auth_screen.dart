import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../app/app_localizations.dart';
import '../../../data/get_storage.dart';
import '../../resources/app_assets.dart';

class CustomAuthScreen extends StatelessWidget {
  final String talk;
  final List<Widget> contentWidgets;
  const CustomAuthScreen({super.key, required this.talk, required this.contentWidgets});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                  height: MediaQuery.of(context).size.height * 0.39,
                  image: Storage.isDarkMode() ? const AssetImage(AppAssets.lettuceDark) : const AssetImage(AppAssets.lettuceLight)),
              const Gap(20),
              Text(talk.tr(context), style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ...contentWidgets,
            ],
          ),
        ),
      ),
    );
  }
}
