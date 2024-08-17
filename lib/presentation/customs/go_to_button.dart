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
        border: Border.all(color: Colors.black),
        color: Colors.teal,
      ),
      child: TextButton(
        child: Text(textThis, style: Theme.of(context).textTheme.bodySmall),
        onPressed: () => Get.offNamed(directedPage),
      ),
    );
  }
}
