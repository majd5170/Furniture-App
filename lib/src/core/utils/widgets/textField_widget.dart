import 'package:flutter/material.dart';

class TextFieldWidgets extends StatelessWidget {
  final String labeltext;
  final String hinttext;
  final bool obscure;

  const TextFieldWidgets(
      {super.key,
      required this.labeltext,
      required this.hinttext,
      required this.obscure});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: labeltext,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: hinttext,
      ),
    );
  }
}
