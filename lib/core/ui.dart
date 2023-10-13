import 'package:flutter/material.dart';

class AppColors {
  static Color accent = const Color(0xff1ab7c3);
  static Color textColor = const Color(0xff212121);
  static Color textLight = const Color(0xff8A8A8A);
  static Color white = const Color(0xffffffff);
}

class Themes {
  static ThemeData defaultTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      // elevation: 1,
      backgroundColor: AppColors.white,
      iconTheme: IconThemeData(color: AppColors.textColor),
      titleTextStyle: TextStyle(fontSize: 18, color: AppColors.textColor),
    ),
    colorScheme: ColorScheme.light(
      primary: AppColors.accent,
      secondary: AppColors.accent,
    ),
  );
}


class TextStyles{
  static TextStyle headin1 = TextStyle(
    fontSize: 48,
    color: AppColors.textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headin2 = TextStyle(
    fontSize: 32,
    color: AppColors.textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headin3 = TextStyle(
    fontSize: 24,
    color: AppColors.textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle body1 = TextStyle(
    fontSize: 18,
    color: AppColors.textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle body2 = TextStyle(
    fontSize: 16,
    color: AppColors.textColor,
    fontWeight: FontWeight.bold,
  );

}
