import 'package:chat_app/app/app_localizations.dart';
import 'package:chat_app/presentation/auth/base/user_validation.dart';
import 'package:flutter/material.dart';

import 'controller.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final IconData icon;
  final AuthController controller;

  const CustomTextField({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isObscured = true;
  late final TextEditingController _controller;

  bool get _isPassword => widget.label.toLowerCase().contains("password");
  TextInputType get _keyboardType => widget.label.toLowerCase().contains("phone") ? TextInputType.phone : TextInputType.text;

  IconButton _buildObscureEye() => IconButton(
        onPressed: () => setState(() => _isObscured = !_isObscured),
        icon: Icon(_isObscured ? Icons.visibility_off_rounded : Icons.visibility_rounded),
      );

  @override
  void initState() {
    super.initState();
    _controller = widget.controller.controllers[widget.label] ?? TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: TextFormField(
        key: ValueKey(widget.label),
        controller: _controller,
        obscureText: _isPassword ? _isObscured : false,
        cursorColor: Colors.black,
        keyboardType: _keyboardType,
        validator: (value) {
          final referencePassword = widget.controller.controllers["password"]?.text ?? "";
          final validatorInstance = UserValidation.fromLabel(widget.label, password: referencePassword);
          return validatorInstance.validateAll(value);
        },
        decoration: InputDecoration(
          errorMaxLines: 2,
          prefixIcon: _isPassword ? _buildObscureEye() : Icon(widget.icon),
          hintText: Tr(widget.label).tr(context),
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
        ),
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black),
      ),
    );
  }
}
