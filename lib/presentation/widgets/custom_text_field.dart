import 'package:flutter/material.dart';

import '../../app/app_localizations.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData textIcon;
  const CustomTextField({super.key, required this.hintText, required this.textIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        cursorColor: Colors.black,
        decoration: InputDecoration(prefixIcon: Icon(textIcon), hintText: hintText.tr(context)),
      ),
    );
  }
}
