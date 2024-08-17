import 'package:chatting_app/presentation/resources/routes_and_navigators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomPage extends StatelessWidget {
  const CustomPage(
      {super.key,
      required this.tBody,
      required this.appBarIcon,
      required this.pageTitle,
      required this.directedPage});
  final Widget tBody;
  final IconData appBarIcon;
  final String pageTitle;
  final String directedPage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Get.offNamed(directedPage);
                  },
                  icon: Icon(appBarIcon)),
              Text(pageTitle),
              InkWell(
                onTap: () {
                  Get.offNamed(NamedRoutes.profile);
                },
                highlightColor: Colors.transparent,
                child: const CircleAvatar(
                  radius: 25,
                  backgroundImage:
                      AssetImage('assets/images/lettuce_chat_logo.jpeg'),
                ),
              )
            ],
          ),
          centerTitle: true,
        ),
        body: tBody);
  }
}
