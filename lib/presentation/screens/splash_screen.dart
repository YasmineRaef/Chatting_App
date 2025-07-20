import 'package:chat_app/app/app_localizations.dart';
import 'package:chat_app/presentation/resources/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../data/get_storage.dart';
import '../resources/app_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final supabase = Supabase.instance.client;

  @override
  void initState() {
    super.initState();
    _redirect();
  }

  Future<void> _redirect() async {
    await Future.delayed(Duration(seconds: 3));
    Get.offNamed(supabase.auth.currentSession == null ? NamedRoutes.welcomeScreen : NamedRoutes.chatsScreen);
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
                image: AssetImage(Storage.isDarkMode() ? AppAssets.lettuceDark : AppAssets.lettuceLight)),
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
