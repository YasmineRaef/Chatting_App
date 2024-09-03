import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../auth/sign_up_age.dart';
import '../auth/sign_up_password.dart';
import '../auth/sign_up_phone.dart';
import '../resources/app_assets.dart';
import '../resources/theme_manager.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
            Expanded(
                child: PageView(
              controller: pageController,
              children: [
                SignUpAge(pageController: pageController),
                SignUpPhone(pageController: pageController),
                SignUpPassword(pageController: pageController),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
