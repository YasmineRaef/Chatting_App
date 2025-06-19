import 'package:chat_app/presentation/screens/chatting_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/models/chat.dart';
import '../resources/app_colors.dart';

class Chatter extends StatelessWidget {
  final ChatData person;
  const Chatter({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      onTap: () => Get.to(() => ChattingScreen(title: person.name, imgProfileUrl: person.url)),
      title: Text(person.name, style: TextStyle(fontSize: 18)),
      subtitle: Text(person.message, style: TextStyle(fontSize: 15)),
      shape: OutlineInputBorder(borderRadius: const BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20))),
      leading:
          CircleAvatar(radius: 24, backgroundColor: AppColors.teal700, child: CircleAvatar(radius: 22, backgroundImage: NetworkImage(person.url))),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(person.timeStamp),
          CircleAvatar(radius: 15, backgroundColor: Colors.amber, child: const Text("1", style: TextStyle(color: Colors.black, fontSize: 15)))
        ],
      ),
    );
  }
}
