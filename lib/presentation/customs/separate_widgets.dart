import 'package:flutter/material.dart';

class SeparateWidgets extends StatelessWidget {
  const SeparateWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 200,
      child: Divider(
        color: Colors.grey,
        thickness: 1.5,
      ),
    );
  }
}
