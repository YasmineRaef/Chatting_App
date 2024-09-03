import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/app_localizations.dart';
import '../resources/app_assets.dart';
import '../resources/app_routes.dart';

class CustomScreen extends StatelessWidget {
  final String pageTitle;
  final Widget contentBody;
  final IconData appBarIcon;
  final String directedPage;
  const CustomScreen(
      {super.key,
      required this.contentBody,
      required this.appBarIcon,
      required this.pageTitle,
      required this.directedPage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: contentBody,
      appBar: _buildAppBar(context),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(pageTitle.translateS(context),
          style: Theme.of(context).textTheme.bodySmall),
      leading: IconButton(
          onPressed: () => Get.offNamed(directedPage),
          icon: Icon(appBarIcon, color: Theme.of(context).iconTheme.color)),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
            highlightColor: Colors.transparent,
            onTap: () => Get.offNamed(NamedRoutes.profileScreen),
            child: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(AppAssets.lettuceLight)),
          ),
        )
      ],
    );
  }
}
