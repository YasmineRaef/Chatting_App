import 'package:flutter/material.dart';

class SeparateWidgets extends StatelessWidget {
  const SeparateWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: const Divider(
        color: Colors.grey,
        thickness: 1.5,
      ),
    );
  }
}
