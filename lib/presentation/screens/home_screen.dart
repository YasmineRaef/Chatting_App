import 'package:chatting_app/presentation/customs/chatter.dart';
import 'package:chatting_app/presentation/customs/separate_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Gap(20),
            TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: Colors.black),
            ),
            const Gap(20),
            for (int i = 0; i < 10; i++) ...[
              const Gap(10),
              const Chatter(),
              const Gap(10),
              const SeparateWidgets(),
            ],
          ],
        ),
      ),
    );
  }
}
