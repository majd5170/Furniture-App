import 'package:flutter/material.dart';

class TextFieldWidgets extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validate;
  final IconData? icon;
  final VoidCallback? sufiicIconOnpressed;
  final String labeltext;
  final String hinttext;
  final bool obscure;

  const TextFieldWidgets({
    super.key,
    required this.labeltext,
    required this.hinttext,
    this.obscure = false,
    required this.controller,
    this.validate,
    this.icon,
    this.sufiicIconOnpressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validate,
      obscureText: obscure,
      decoration: InputDecoration(
        suffixIcon:
            IconButton(onPressed: sufiicIconOnpressed, icon: Icon(icon)),
        labelText: labeltext,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: hinttext,
      ),
    );
  }
}
