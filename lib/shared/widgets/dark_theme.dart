import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Colors/colors.dart';

ThemeData lightTheme(context) => ThemeData(
      scrollbarTheme: const ScrollbarThemeData().copyWith(
        thumbColor:
            MaterialStateProperty.all(ColorManger.primaryColor.withOpacity(.3)),
      ),
      primaryColor: ColorManger.primaryColor,
      scaffoldBackgroundColor: ColorManger.bgColor,
      canvasColor: ColorManger.bgColor,
      textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          .apply(
            bodyColor: Colors.white,
          )
          .copyWith(
            bodyLarge: const TextStyle(color: ColorManger.bodyTextColor),
            bodyMedium: const TextStyle(color: ColorManger.bodyTextColor),
          ),
    );
