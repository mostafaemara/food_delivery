import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/styles/app_colors.dart';

class AppTheme {
  static get lightTheme {
    return ThemeData(
        scaffoldBackgroundColor: AppColors.colorScheme.background,
        inputDecorationTheme: InputDecorationTheme(
            hintStyle: const TextStyle(color: AppColors.lightGrey),
            filled: true,
            fillColor: AppColors.colorScheme.surface,
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
        colorScheme: AppColors.colorScheme,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)))))));
  }

  static get darkTheme {
    return ThemeData(colorScheme: AppColors.colorScheme);
  }
}