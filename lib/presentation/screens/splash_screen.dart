import 'package:chat_app/app/app_localizations.dart';
import 'package:chat_app/presentation/resources/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:stroke_text/stroke_text.dart';

import '../../data/get_storage.dart';
import '../resources/app_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  Future<void> _redirect() async {
    await Future.delayed(Duration(seconds: 5));
    //To see if the user was already signed in or not...
    final session = true;
    if (session == true) {
      Get.offNamed(NamedRoutes.chatsScreen);
    } else {
      Get.offNamed(NamedRoutes.welcomeScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Gap(15),
            Image(
                height: MediaQuery.sizeOf(context).height * .39,
                image: Storage.isDarkMode() ? const AssetImage(AppAssets.lettuceDark) : const AssetImage(AppAssets.lettuceLight)),
            StrokeText(
              text: Tr("appName").tr(context),
              textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 40, color: Colors.teal, fontWeight: FontWeight.bold),
              strokeWidth: 2,
              strokeColor: Colors.black,
              textAlign: TextAlign.center,
            ),
            CircularProgressIndicator(color: Colors.teal),
          ],
        ),
      ),
    );
  }
}
