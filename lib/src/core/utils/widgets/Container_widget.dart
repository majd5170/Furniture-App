import 'package:flutter/material.dart';
import 'package:furniture_app/src/core/utils/resources/app_color.dart';

class ContainerWidget extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Color color;
  final double radius;

  const ContainerWidget(
      {super.key,
      required this.width,
      required this.height,
      required this.text,
      required this.color,
      required this.radius});

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
            color: AppColors.black, fontSize: 16, fontWeight: FontWeight.w500),
      )),
    );
  }
}
