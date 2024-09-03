import 'package:chatting_app/app/app_localizations.dart';
import 'package:chatting_app/presentation/auth/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../widgets/buttons.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_text_field.dart';

class SignUpPassword extends StatelessWidget {
  const SignUpPassword({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text("lettyPassword".translateS(context),
              style:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const Gap(30),
          const CustomTextField(
              hintText: "createPass", textIcon: Icons.remove_red_eye),
          const CustomDivider(20),
          const CustomTextField(
              hintText: "confirmPass", textIcon: Icons.remove_red_eye),
          const Gap(30),
          ButtonFunctions(
              pageController: pageController,
              firstButton: () =>
                  Get.off(() => const SignInScreen(isNewMember: true)),
              secondButton: () => pageController.previousPage(
                  duration: const Duration(seconds: 1), curve: Curves.ease),
              firstText: "signUp",
              secondText: "back")
        ],
      ),
    );
  }
}
