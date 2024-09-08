import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Color color;
  final Color text_color;
  final double radius;

  const CustomContainer(
      {super.key,
      required this.width,
      required this.height,
      required this.text,
      required this.color,
      required this.radius, required this.text_color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius)),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            color: text_color, fontSize: 16, fontWeight: FontWeight.w500),
      )),
    );
  }
}