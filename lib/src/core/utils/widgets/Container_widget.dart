import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;
  final Color color;
  final double radius;

  const CustomContainer(
      {super.key,
      required this.width,
      required this.height,
      required this.color,
      required this.radius, 
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius)),
      child: child
    );
  }
}