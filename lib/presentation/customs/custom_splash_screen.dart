import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomSplashScreen extends StatelessWidget {
  const CustomSplashScreen({super.key, required this.talk, required this.ui});
  final String talk;
  final Widget ui;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const Gap(20),
        const SizedBox(
          height: 300,
          child: Image(
            image: AssetImage('assets/images/lettuce_chat_logo.jpeg'),
          ),
        ),
        const Gap(20),
        Text(
          talk,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        ui,
      ])),
    ));
  }
}
