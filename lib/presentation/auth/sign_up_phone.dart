import 'package:chatting_app/app/app_localizations.dart';
import 'package:chatting_app/presentation/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/custom_divider.dart';
import '../widgets/custom_text_field.dart';

class SignUpPhone extends StatelessWidget {
  const SignUpPhone({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text("lettyPhone".translateS(context),
              style:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const Gap(30),
          const CustomTextField(hintText: "name", textIcon: Icons.abc),
          const CustomDivider(),
          const CustomTextField(hintText: "phone", textIcon: Icons.numbers),
          const Gap(40),
          ButtonFunctions(
              pageController: pageController,
              firstButton: () => pageController.nextPage(
                  duration: const Duration(seconds: 1), curve: Curves.ease),
              secondButton: () => pageController.previousPage(
                  duration: const Duration(seconds: 1), curve: Curves.ease),
              firstText: "next",
              secondText: "back")
        ],
      ),
    );
  }
}
