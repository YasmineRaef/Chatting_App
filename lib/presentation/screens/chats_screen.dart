import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../resources/app_routes.dart';
import '../widgets/chatter.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_screen.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      pageTitle: "appName",
      appBarIcon: Icons.settings,
      directedPage: NamedRoutes.settingsScreen,
      //
      contentBody: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Gap(20),
              const TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(prefixIcon: Icon(Icons.search))),
              const Gap(20),
              ListView.separated(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (_, __) => const Chatter(),
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (_, __) => const CustomDivider(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
