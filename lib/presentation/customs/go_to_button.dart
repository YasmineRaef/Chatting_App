import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoToButton extends StatelessWidget {
  const GoToButton({
    super.key,
    required this.textThis,
    required this.directedPage,
  });
  final String textThis;
  final String directedPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.teal,
      ),
      child: TextButton(
        child: Text(
          textThis,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        onPressed: () => Get.offNamed(directedPage),
      ),
    );
  }
}
