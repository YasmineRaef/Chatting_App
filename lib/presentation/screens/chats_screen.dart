import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../resources/app_routes.dart';
import '../widgets/chatter.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_screen.dart';
import 'add_new_contact.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      pageTitle: "appName",
      appBarIcon: Icons.settings,
      directedPage: NamedRoutes.settingsScreen,
      hasFloatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.brown[100],
            context: context,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddNewContact(),
              );
            },
          );
        },
        backgroundColor: Colors.grey,
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
      contentBody: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              const Gap(10),
              _buildSearchBox(),
              const Gap(35),
              ListView.separated(
                itemCount: names.length + 10,
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  if (index < names.length) {
                    return names[index];
                  } else {
                    return const Chatter(contactName: "Yasmine Raef", lastMsg: "5 minutes to doorknock 😎");
                  }
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
    return TextField(
      cursorHeight: 18,
      cursorColor: Colors.black,
      style: TextStyle(color: Colors.black, fontSize: 20),
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
