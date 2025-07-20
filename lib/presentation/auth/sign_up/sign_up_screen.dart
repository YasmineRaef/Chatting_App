import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../app/app_localizations.dart';
import '../../../data/get_storage.dart';
import '../../resources/app_assets.dart';
import '../../widgets/custom_divider.dart';
import '../base/field_type.dart';
import 'sign_up_controller.dart';

class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (controller.signUpData.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      body: Form(
        key: controller.formKey,
        child: PageView.builder(
          controller: controller.pageController,
          itemCount: controller.signUpData.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) => SingleChildScrollView(
            child: Column(
              children: [
                const Gap(20),
                Image(
                  height: Get.height * .39,
                  image: AssetImage(
                    Storage.isDarkMode() ? AppAssets.lettuceDark : AppAssets.lettuceLight,
                  ),
                ),
                const Gap(20),
                Text(
                  Tr(controller.pagesTitle[index]).tr(context),
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Gap(30),
                for (int i = 0; i < controller.signUpData[index].length; ++i) ..._buildFormFields(index, i),
                const Gap(30),
                ElevatedButton(
                  onPressed: () {
                    if (controller.formKey.currentState!.validate()) {
                      controller.goNextPage();
                    }
                  },
                  child: Text(
                    Tr(index == controller.signUpData.length - 1 ? "signIn" : "next").tr(context),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                const Gap(20),
                ElevatedButton(
                  onPressed: controller.goPreviousPage,
                  child: Text(
                    Tr("back").tr(context),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildFormFields(int index, int i) {
    final field = controller.signUpData[index][i];
    return [
      CustomTextField(
        key: ValueKey('${index}_${field.hintText}'),
        icon: field.icon,
        label: field.hintText,
        controller: controller,
      ),
      i == 0 && controller.signUpData[index].length > 1 ? const CustomDivider() : const SizedBox.shrink()
    ];
  }
}
