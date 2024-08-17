import 'package:chatting_app/presentation/customs/custom_page.dart';
import 'package:chatting_app/presentation/resources/routes_and_navigators.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPage(
        tBody: const Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(children: [
              CircleAvatar(
                radius: 85,
                backgroundColor: Colors.teal,
                child: CircleAvatar(
                  radius: 80,
                  foregroundImage:
                      AssetImage("assets/images/lettuce_chat_logo.jpeg"),
                ),
              ),
              Gap(20),
            ]),
          ),
        ),
        appBarIcon: Icons.arrow_back,
        pageTitle: "Profile",
        directedPage: NamedRoutes.home);
  }
}
