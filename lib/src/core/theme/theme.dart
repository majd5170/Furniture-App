import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/resources/app_color.dart';

ThemeData getAppTheme() {
  return ThemeData(
      // scaffoldBackgroundColor
      scaffoldBackgroundColor: AppColors.bgcolor,

      // appBarTheme

      // textTheme
      textTheme: TextTheme(
          displayMedium: GoogleFonts.openSans(
            color: AppColors.blackFont,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
          displaySmall: GoogleFonts.openSans(
            color: AppColors.blackFont,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          )));
}
