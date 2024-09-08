
import 'package:flutter/material.dart';


class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.text, required this.onPressed, required this.text_color_button});
  final Color text_color_button;
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: Theme.of(context).textButtonTheme.style,
      child: Text(
        text,
        style: Theme.of(context).textTheme.displaySmall
      ),
    );
  }
}