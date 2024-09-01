import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/custom_screen.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/go_to_button.dart';
import '../resources/app_assets.dart';
import '../resources/app_routes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScreen(
      pageTitle: "profile",
      appBarIcon: Icons.arrow_back,
      directedPage: NamedRoutes.chatsScreen, // It's Clear
      contentBody: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 85,
                  backgroundColor: Colors.teal,
                  child: CircleAvatar(radius: 80, foregroundImage: AssetImage(AppAssets.lettuceLight)),
                ),
                Gap(40),
                CustomTextField(hintText: "Yasmine Raef Mohamed", textIcon: Icons.abc),
                Gap(20),
                CustomTextField(hintText: "+1 (929) 739-8937", textIcon: Icons.numbers),
                Gap(20),
                CustomTextField(hintText: "01/01/2004", textIcon: Icons.cake),
                Gap(40),
                GoToButton(text: "profileSave", directedPage: NamedRoutes.profileScreen),
                Gap(20),
                GoToButton(text: "profileDelete", directedPage: NamedRoutes.welcomeScreen)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
