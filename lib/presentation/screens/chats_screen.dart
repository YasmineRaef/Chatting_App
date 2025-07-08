import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../domain/models/mock_data.dart';
import '../resources/app_routes.dart';
import '../widgets/chatter.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_screen.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      image: '',
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
                itemBuilder: (BuildContext context, int index) {
                  final chatData = generatePerson();
                  return Chatter(person: chatData);
                },
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
    return Row(
      children: [
        Expanded(
          child: TextField(
            cursorHeight: 18,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black, fontSize: 20),
            decoration: InputDecoration(
              filled: false,
              prefixIcon: Icon(Icons.search),
              border:
                  const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)), borderSide: BorderSide(color: Colors.teal, width: 2)),
              focusedBorder:
                  const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)), borderSide: BorderSide(color: Colors.teal, width: 2)),
            ),
          ),
        ),
        IconButton(onPressed: () => Get.offNamed(NamedRoutes.addNewContact), icon: Icon(Icons.add_circle_outline, color: Colors.teal, size: 30)),
      ],
    );
  }
}
