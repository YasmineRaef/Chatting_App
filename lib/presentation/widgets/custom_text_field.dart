import 'package:flutter/material.dart';

import '../../app/app_localizations.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData textIcon;
  const CustomTextField(
      {super.key, required this.hintText, required this.textIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.teal, width: 2),
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
      ),
      child: Center(
        child: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            icon: Icon(textIcon),
            border: InputBorder.none,
            fillColor: Colors.grey.shade200,
            iconColor: Colors.grey.shade800,
            hintText: hintText.translateS(context),
            contentPadding: const EdgeInsets.all(5),
          ),
        ),
      ),
    );
  }
}
