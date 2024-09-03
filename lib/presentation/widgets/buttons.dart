import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../app/app_localizations.dart';

class GoToButton extends StatelessWidget {
  final String text;
  final String directedPage;
  const GoToButton({super.key, required this.text, required this.directedPage});

  bool? _manageSignIn() {
    if (text.contains("signIn")) {
      if (text.contains("Welcome")) return false;
      return true;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Get.offNamed(directedPage, arguments: _manageSignIn()),
      child: Text(text.translateS(context),
          style: Theme.of(context).textTheme.bodySmall),
    );
  }
}

class ButtonFunctions extends StatelessWidget {
  const ButtonFunctions({
    super.key,
    required this.pageController,
    required this.firstButton,
    required this.secondButton,
    required this.firstText,
    required this.secondText,
  });
  final Function firstButton;
  final String firstText;
  final String secondText;
  final Function secondButton;

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () => firstButton(),
            child: Text(firstText.translateS(context))),
        const Gap(20),
        ElevatedButton(
            onPressed: () => secondButton(),
            child: Text(secondText.translateS(context)))
      ],
    );
  }
}
