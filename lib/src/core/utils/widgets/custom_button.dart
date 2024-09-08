
import 'package:flutter/material.dart';

import '../resources/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed,this.backgroundColor=AppColors.primary, required this.text_color_button});
  final Color text_color_button;
  final String text;
  final VoidCallback onPressed;
 final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: onPressed,
      style: Theme.of(context).elevatedButtonTheme.style,
      child: Text(
        text,
        style: Theme.of(context).textTheme.displaySmall!.copyWith(
          color: text_color_button,
        ),
      ),
    );
  }
}