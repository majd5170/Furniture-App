import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/resources/app_color.dart';

// ThemeData getAppTheme() {
//   return ThemeData(
//       // scaffoldBackgroundColor
//       scaffoldBackgroundColor: AppColors.bgcolor,

//       // appBarTheme

//       // textTheme
//       textTheme: TextTheme(
//           displayMedium: GoogleFonts.openSans(
//             color: AppColors.blackFont,
//             fontWeight: FontWeight.w500,
//             fontSize: 28,
//           ),
//           displaySmall: GoogleFonts.openSans(
//             color: AppColors.blackFont,
//             fontWeight: FontWeight.w400,
//             fontSize: 16,
//           )),
          
//       // elevatedButtonTheme
//       elevatedButtonTheme: ElevatedButtonThemeData(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: AppColors.primary,
//           elevation: 10,
//           foregroundColor: AppColors.white
//         ),
//       ),
//       textButtonTheme: TextButtonThemeData(
//         style: TextButton.styleFrom(
//           backgroundColor: AppColors.white,
//           elevation: 3,
//           foregroundColor: AppColors.blackFont,
//         )
//       )
//  );

 
// }


ThemeData getThemeData({bool isLight = true}) {
  if (isLight) {
    return ThemeData(
      useMaterial3: true,
      // app bar theme config
      // scaffoldBackgroundColor
      scaffoldBackgroundColor: AppColors.bgcolor,
      textTheme: TextTheme(
          displayMedium: GoogleFonts.openSans(
            color: AppColors.blackFont,
            fontWeight: FontWeight.w500,
            fontSize: 28,
          ),
          displaySmall: GoogleFonts.openSans(
            color: AppColors.blackFont,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          )),
          
      // elevatedButtonTheme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          elevation: 10,
          foregroundColor: AppColors.white
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.white,
          elevation: 3,
          foregroundColor: AppColors.blackFont,
        )
      )    
    );
  } else {
    return ThemeData(
      useMaterial3: true,
      // app bar theme config
      // scaffoldBackgroundColor
      scaffoldBackgroundColor: AppColors.bgDarkcolor,
      textTheme: TextTheme(
          displayMedium: GoogleFonts.openSans(
            color: AppColors.white,
            fontWeight: FontWeight.w500,
            fontSize: 28,
          ),
          displaySmall: GoogleFonts.openSans(
            color: AppColors.white,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
          titleLarge: GoogleFonts.openSans(
            color: Colors.white,
          )          
          ),
          
          
      // elevatedButtonTheme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          elevation: 10,
          foregroundColor: AppColors.white
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.white,
          elevation: 3,
          foregroundColor: AppColors.white,
        )
      )    
    );
  }
}