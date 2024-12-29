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
      contentBody: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              const Gap(10),
              _buildSearchBox(),
              const Gap(35),
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

  Widget _buildSearchBox() {
    return TextField(
      cursorHeight: 18,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        filled: false,
        prefixIcon: Icon(Icons.search),
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)), borderSide: BorderSide(color: Colors.teal, width: 2)),
        focusedBorder:
            const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)), borderSide: BorderSide(color: Colors.teal, width: 2)),
      ),
    );
  }
}
