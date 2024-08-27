import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/src/core/utils/resources/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle _textStyle(
    {required Color color,
    required double fontSize,
    required FontWeight fontWeight}) {
  return GoogleFonts.lato(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}

// boldStyle
TextStyle boldStyle({
  Color color = AppColors.white,
  double fontSize = 24,
}) =>
    _textStyle(color: color, fontSize: fontSize, fontWeight: FontWeight.w400);

// requlareStyle
TextStyle requlareStyle({
  Color color = AppColors.black,
  double fontSize = 20,
}) =>
    _textStyle(color: color, fontSize: fontSize, fontWeight: FontWeight.w400);
