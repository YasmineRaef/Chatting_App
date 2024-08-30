import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:chatting_app/presentation/customs/message_box.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../data/chat_list.dart';
import '../customs/custom_page.dart';
import '../resources/routes_and_navigators.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomPage(
        tBody: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              DateChip(date: DateTime.now()),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Gap(10),
                      for (int i = 0; i < chat.length; i++) ...[
                        chat[i],
                        const Gap(10)
                      ],
                    ],
                  ),
                ),
              ),
              const MessageBox(),
            ],
          ),
        ),
        appBarIcon: Icons.arrow_back,
        pageTitle: "Yasmine Raef",
        directedPage: NamedRoutes.home);
  }
}
