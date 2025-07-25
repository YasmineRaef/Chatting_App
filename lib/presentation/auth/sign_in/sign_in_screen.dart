import 'package:chat_app/app/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../resources/app_routes.dart';
import '../../widgets/buttons.dart';
import '../../widgets/custom_divider.dart';
import '../base/field_type.dart';
import '../widget/custom_auth_screen.dart';
import 'sign_in_controller.dart';

class SignInScreen extends StatelessWidget {
  final bool isNewMember;
  static final _controller = SignInController();
  const SignInScreen({super.key, required this.isNewMember});

  static final signInformKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return CustomAuthScreen(
      talk: isNewMember ? "Activate your new account" : "Welcome Back",
      contentWidgets: [
        Gap(30),
        Form(
          key: signInformKey,
          child: Column(
            children: [
              CustomTextField(label: "name", icon: Icons.person, controller: _controller),
              CustomDivider(),
              CustomTextField(label: "password", icon: Icons.remove_red_eye, controller: _controller),
              Gap(30),
              ElevatedButton(
                  onPressed: () async {
                    final success = await _controller.authenticate();
                    if (success) Get.offNamed(NamedRoutes.chatsScreen);
                  },
                  child: Text(Tr("enter").tr(context)))
            ],
          ),
        ),
        Gap(10),
        GoToButton(text: "back", directedPage: NamedRoutes.welcomeScreen)
      ],
    );
  }
}
