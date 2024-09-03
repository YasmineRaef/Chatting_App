import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../app/app_localizations.dart';
import '../resources/app_assets.dart';
import '../resources/theme_manager.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_text_field.dart';
import 'sign_up_logic.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: SignUpLogic.pageController,
        itemCount: SignUpLogic.signUpData.length,
        itemBuilder: (_, index) => SingleChildScrollView(
          child: Column(
            children: [
              const Gap(20),
              Image(height: 300, image: AppTheme.isLightMode ? const AssetImage(AppAssets.lettuceLight) : const AssetImage(AppAssets.lettuceDark)),
              const Gap(20),
              Text(SignUpLogic.pagesTitle[index].translateS(context), style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const Gap(30),

              // TextFields
              for (int i = 0; i < SignUpLogic.signUpData[index].length; ++i) ...[
                CustomTextField(hintText: SignUpLogic.signUpData[index][i].hintText, textIcon: SignUpLogic.signUpData[index][i].icon),
                i == 0 && SignUpLogic.signUpData[index].length > 1 ? const CustomDivider() : const SizedBox.shrink()
              ],
              const Gap(30),

              // Next & Back Buttons
              ElevatedButton(
                  onPressed: SignUpLogic.goNextPage,
                  child: Text(((index == SignUpLogic.signUpData.length - 1) ? "signIn" : "next").translateS(context))),
              const Gap(20),
              ElevatedButton(onPressed: SignUpLogic.goPreviousPage, child: Text("back".translateS(context)))
            ],
          ),
        ),
      ),
    );
  }
}
