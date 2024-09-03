import 'package:chatting_app/app/app_localizations.dart';
import 'package:chatting_app/presentation/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../resources/app_routes.dart';
import '../widgets/custom_text_field.dart';

class SignUpAge extends StatelessWidget {
  const SignUpAge({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "lettyAge".translateS(context),
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Gap(30),
          const CustomTextField(hintText: "age", textIcon: Icons.cake),
          const Gap(20),
          const Gap(20),
          ButtonFunctions(
              pageController: pageController,
              firstButton: () => pageController.nextPage(
                  duration: const Duration(seconds: 1), curve: Curves.ease),
              secondButton: () => Get.offNamed(NamedRoutes.welcomeScreen),
              firstText: "next",
              secondText: "back")
        ],
      ),
    );
  }
}
