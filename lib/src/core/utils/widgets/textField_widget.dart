// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextFieldWidgets extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validate;
  final IconData? icon;
  final VoidCallback? sufiicIconOnpressed;
  final String labeltext;
  final String hinttext;
  final dynamic inputType;
  final bool obscure;

  const TextFieldWidgets({
    Key? key,
    required this.controller,
    this.validate,
    this.icon,
    this.sufiicIconOnpressed,
    required this.labeltext,
    required this.hinttext,
    required this.inputType,
    this.obscure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
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
