import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../resources/app_assets.dart';
import '../resources/app_routes.dart';
import '../widgets/buttons.dart';
import '../widgets/custom_screen.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      image: '',
      pageTitle: "profile",
      appBarIcon: Icons.arrow_back,
      directedPage: NamedRoutes.chatsScreen,
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
                TextField(
                    decoration: InputDecoration(
                  hintText: "Yasmine Raef Mohamed",
                  prefixIcon: Icon(Icons.abc),
                )),
                Gap(20),
                TextField(
                    decoration: InputDecoration(
                  hintText: "+1 (929) 739-8937",
                  prefixIcon: Icon(Icons.numbers),
                )),
                Gap(20),
                TextField(
                    decoration: InputDecoration(
                  hintText: "01/01/2004",
                  prefixIcon: Icon(Icons.cake),
                )),
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
