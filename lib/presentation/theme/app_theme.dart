import 'package:flutter/material.dart';
import 'package:mypcot/presentation/theme/colors/app_colors.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    fontFamily: 'Roboto',
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColors.navyBlue,
    appBarTheme: AppBarTheme(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.navyBlue),
      titleTextStyle: TextStyle(
        fontFamily: 'Roboto',
        color: AppColors.navyBlue,

        fontWeight: FontWeight.w600,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(fontFamily: 'Roboto', color: AppColors.navyBlue),
      bodyMedium: TextStyle(fontFamily: 'Roboto', color: AppColors.navyBlue),
      bodySmall: TextStyle(fontFamily: 'Roboto', color: AppColors.navyBlue),
      displayLarge: TextStyle(fontFamily: 'Roboto', color: AppColors.navyBlue),
      displayMedium: TextStyle(fontFamily: 'Roboto', color: AppColors.navyBlue),
      displaySmall: TextStyle(fontFamily: 'Roboto', color: AppColors.navyBlue),
      titleLarge: TextStyle(fontFamily: 'Roboto', color: AppColors.navyBlue),
      titleMedium: TextStyle(fontFamily: 'Roboto', color: AppColors.navyBlue),
      titleSmall: TextStyle(fontFamily: 'Roboto', color: AppColors.navyBlue),
      labelLarge: TextStyle(fontFamily: 'Roboto', color: AppColors.navyBlue),
      labelMedium: TextStyle(fontFamily: 'Roboto', color: AppColors.navyBlue),
      labelSmall: TextStyle(fontFamily: 'Roboto', color: AppColors.navyBlue),
    ),
    iconTheme: IconThemeData(color: AppColors.navyBlue),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.navyBlue,
      onPrimary: AppColors.white,
      secondary: AppColors.coralOrange,
      onSecondary: AppColors.white,
      error: Colors.red,
      onError: AppColors.white,
      surface: AppColors.white,
      onSurface: AppColors.navyBlue,
      tertiary: AppColors.skyBlue,
    ),
  );
}
