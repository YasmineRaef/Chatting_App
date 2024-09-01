import 'package:chatting_app/presentation/resources/app_assets.dart';
import 'package:chatting_app/presentation/resources/app_colors.dart';

import '../resources/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Chatter extends StatelessWidget {
  const Chatter({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.offNamed(NamedRoutes.chattingScreen),
      child: Container(
        height: 80,
        width: 370,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: const BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // User Profile Picture
            const CircleAvatar(
              radius: 24,
              backgroundColor: AppColors.teal700,
              child: CircleAvatar(radius: 22, backgroundImage: AssetImage(AppAssets.lettuceProfile)),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Username
                Text("Yasmine Raef", style: TextStyle(fontSize: 18)),
                // Last Message 
                Text("5 minutes to doorknock 😎", style: TextStyle(fontSize: 15)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Last Message Time
                const Text("12:58 PM", style: TextStyle(fontSize: 12)),
                // Number of Unread Messages
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(50)),
                  child: const Text("1", style: TextStyle(color: Colors.black, fontSize: 15)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
