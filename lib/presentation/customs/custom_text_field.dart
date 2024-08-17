import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, required this.textIcon});
  final String hint;
  final IconData textIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        width: 300,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.teal, width: 2),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
        child: Center(
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(5),
                fillColor: Colors.grey.shade200,
                hintText: hint,
                border: InputBorder.none,
                icon: Icon(textIcon),
                iconColor: Colors.grey.shade800),
          ),
        ));
  }
}
