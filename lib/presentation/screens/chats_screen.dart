import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../resources/app_routes.dart';
import '../widgets/chatter.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_screen.dart';
import '../widgets/search_box.dart';

class ChatsScreen extends StatelessWidget {
  // final List<Chat> chats;
  /*
    Chat Class:
    String contactName 
    int unreadMessages
    String contactLastMessage
    String contactProfilePicture
    String || DateTime lastMessageTime
  */
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
              const SearchBox(),
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
}
