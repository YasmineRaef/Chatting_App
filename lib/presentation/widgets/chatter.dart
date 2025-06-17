import 'package:chat_app/presentation/screens/chatting_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../resources/app_colors.dart';

class Chatter extends StatelessWidget {
  final String name;
  final String msg;
  final String imgUrl;
  final String timeStamp;
  const Chatter({super.key, required this.name, required this.msg, required this.imgUrl, required this.timeStamp});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      onTap: () => Get.to(() => ChattingScreen(title: name, imgProfileUrl: imgUrl)),
      title: Text(name, style: TextStyle(fontSize: 18)),
      subtitle: Text(msg, style: TextStyle(fontSize: 15)),
      shape: OutlineInputBorder(borderRadius: const BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20))),
      leading: CircleAvatar(radius: 24, backgroundColor: AppColors.teal700, child: CircleAvatar(radius: 22, backgroundImage: NetworkImage(imgUrl))),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(timeStamp),
          CircleAvatar(radius: 15, backgroundColor: Colors.amber, child: const Text("1", style: TextStyle(color: Colors.black, fontSize: 15)))
        ],
      ),
    );
  }
}
