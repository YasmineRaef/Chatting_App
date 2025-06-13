import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../resources/app_assets.dart';
import '../resources/app_colors.dart';
import '../resources/app_routes.dart';

class Chatter extends StatelessWidget {
  final String contactName;
  final String lastMsg;
  const Chatter({super.key, required this.contactName, required this.lastMsg});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      onTap: () => Get.offNamed(NamedRoutes.chattingScreen),
      title: Text(contactName, style: TextStyle(fontSize: 18)),
      subtitle: Text(lastMsg, style: TextStyle(fontSize: 15)),
      shape: OutlineInputBorder(borderRadius: const BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20))),
      leading: const CircleAvatar(
          radius: 24, backgroundColor: AppColors.teal700, child: CircleAvatar(radius: 22, backgroundImage: AssetImage(AppAssets.lettuceProfile))),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(radius: 15, backgroundColor: Colors.amber, child: const Text("1", style: TextStyle(color: Colors.black, fontSize: 15)))
        ],
      ),
    );
  }
}
