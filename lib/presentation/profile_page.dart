import 'package:chatting_app/app/app_localizations.dart';
import 'package:chatting_app/presentation/customs/custom_page.dart';
import 'package:chatting_app/presentation/customs/custom_text_field.dart';
import 'package:chatting_app/presentation/customs/go_to_button.dart';
import 'package:chatting_app/presentation/resources/routes_and_navigators.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomPage(
        tBody: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 85,
                      backgroundColor: Colors.teal,
                      child: CircleAvatar(
                        radius: 80,
                        foregroundImage:
                            AssetImage("assets/images/lettuce_chat_logo.jpeg"),
                      ),
                    ),
                    const Gap(40),
                    const CustomTextField(
                        hint: "Yasmine Raef Mohamed", textIcon: Icons.abc),
                    const Gap(20),
                    const CustomTextField(
                        hint: "+1 (929) 739-8937", textIcon: Icons.numbers),
                    const Gap(20),
                    const CustomTextField(
                        hint: "01/01/2004", textIcon: Icons.cake),
                    const Gap(40),
                    GoToButton(
                        textThis: "profileSave".translateS(context),
                        directedPage: NamedRoutes.profile),
                    const Gap(20),
                    GoToButton(
                        textThis: "profileDelete".translateS(context),
                        directedPage: NamedRoutes.splash)
                  ]),
            ),
          ),
        ),
        appBarIcon: Icons.arrow_back,
        pageTitle: "profile".translateS(context),
        directedPage: NamedRoutes.home);
  }
}
