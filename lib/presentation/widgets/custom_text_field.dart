import 'package:flutter/material.dart';

import '../../app/app_localizations.dart';
import '../auth/user_validation.dart';

class CustomTextField extends StatelessWidget {
  final bool passwordVisible;
  final IconData icon;
  final String hintText;
  const CustomTextField({super.key, required this.hintText, required this.icon, required this.passwordVisible});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: TextFormField(
        obscureText: passwordVisible,
        cursorHeight: 20,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: Tr(hintText).tr(context),
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
        ),
        validator: (value) => FormController.validation(value, hintText),
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black),
      ),
    );
  }
}
