import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/state_manager.dart';

import '../../../app/app_localizations.dart';
import '../../../data/get_storage.dart';
import '../../resources/app_assets.dart';
import '../../widgets/custom_divider.dart';
import '../../widgets/custom_text_field.dart';
import 'sign_up_controller.dart';

class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: controller.pageController,
        itemCount: controller.signUpData.length,
        itemBuilder: (_, index) => SingleChildScrollView(
          child: Column(
            children: [
              const Gap(20),
              Image(height: 300, image: Storage.isDarkMode() ? const AssetImage(AppAssets.lettuceDark) : const AssetImage(AppAssets.lettuceLight)),
              const Gap(20),
              Text(controller.pagesTitle[index].tr(context), style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const Gap(30),

              // TextFields
              for (int i = 0; i < controller.signUpData[index].length; ++i) ...[
                CustomTextField(hintText: controller.signUpData[index][i].hintText, textIcon: controller.signUpData[index][i].icon),
                i == 0 && controller.signUpData[index].length > 1 ? const CustomDivider() : const SizedBox.shrink()
              ],
              const Gap(30),

              // Next & Back Buttons
              ElevatedButton(
                  onPressed: controller.goNextPage, child: Text(((index == controller.signUpData.length - 1) ? "signIn" : "next").tr(context))),
              const Gap(20),
              ElevatedButton(onPressed: controller.goPreviousPage, child: Text("back".tr(context)))
            ],
          ),
        ),
      ),
    );
  }
}
