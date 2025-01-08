import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../app/app_localizations.dart';
import '../../../data/get_storage.dart';
import '../../resources/app_assets.dart';
import '../../widgets/custom_divider.dart';
import '../../widgets/custom_text_field.dart';
import 'sign_up_controller.dart';

class SignUpScreen extends GetView<SignUpController> {
  SignUpScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: PageView.builder(
          controller: controller.pageController,
          itemCount: controller.signUpData.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) => Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Gap(20),
                  Image(
                      height: Get.height * .39,
                      image: Storage.isDarkMode() ? const AssetImage(AppAssets.lettuceDark) : const AssetImage(AppAssets.lettuceLight)),
                  const Gap(20),
                  Text(controller.pagesTitle[index].trans(context), style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const Gap(30),
                  for (int i = 0; i < controller.signUpData[index].length; ++i) ..._buildFormFields(index, i),
                  const Gap(30),
                  ElevatedButton(
                      onPressed: () => formKey.currentState!.validate() ? controller.goNextPage() : null,
                      child: Text(((index == controller.signUpData.length - 1) ? "signIn" : "next").trans(context),
                          style: Theme.of(context).textTheme.bodySmall)),
                  const Gap(20),
                  ElevatedButton(
                      onPressed: controller.goPreviousPage, child: Text("back".trans(context), style: Theme.of(context).textTheme.bodySmall))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildFormFields(int index, int i) {
    return [
      CustomTextField(icon: controller.signUpData[index][i].icon, hintText: controller.signUpData[index][i].hintText),
      i == 0 && controller.signUpData[index].length > 1 ? const CustomDivider() : const SizedBox.shrink()
    ];
  }
}
