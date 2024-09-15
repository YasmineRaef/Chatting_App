import 'package:flutter/material.dart';
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
      child: Text(Tr(text).tr(context), style: Theme.of(context).textTheme.bodySmall),
    );
  }
}
