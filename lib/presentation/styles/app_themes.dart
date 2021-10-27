import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/styles/app_colors.dart';

class AppTheme {
  static get lightTheme {
    return ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: AppColors.lightColorScheme.background,
        inputDecorationTheme: InputDecorationTheme(
            hintStyle: const TextStyle(color: AppColors.lightGrey),
            filled: true,
            fillColor: AppColors.lightColorScheme.surface,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: AppColors.accentColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: AppColors.lightGrey,
              ),
            ),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(15))),
        colorScheme: AppColors.lightColorScheme,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)))))));
  }

  static get darkTheme {
    return ThemeData(
        fontFamily: "Cairo",
        unselectedWidgetColor: AppColors.darkColorScheme.onSurface,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: AppColors.darkColorScheme.surface),
        scaffoldBackgroundColor: AppColors.darkColorScheme.background,
        inputDecorationTheme: InputDecorationTheme(
            hintStyle: const TextStyle(color: AppColors.lightGrey),
            filled: true,
            fillColor: AppColors.darkColorScheme.surface,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: AppColors.accentColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: AppColors.lightGrey,
              ),
            ),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(15))),
        colorScheme: AppColors.darkColorScheme,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)))))));
  }
}
