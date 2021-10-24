import 'package:flutter/material.dart';

class AppColors {
  static const ColorScheme lightColorScheme = ColorScheme(
      primary: Color(0xFFFE554A),
      primaryVariant: Color(0xFFC70039),
      secondary: Color(0xFFF9881F),
      secondaryVariant: Color(0xFFFF5733),
      surface: Color(0xFFFCFCFC),
      background: Color(0xFFF7F7FB),
      error: Color(0xFFB00020),
      onPrimary: Color(0xFFFFFFFF),
      onSecondary: Color(0xFFFFFFFF),
      onSurface: Color(0xFF2A3037),
      onBackground: Color(0xFF2A3037),
      onError: Color(0xFFFFFFFF),
      brightness: Brightness.light);

  static const ColorScheme darkColorScheme = ColorScheme(
      primary: Colors.white10,
      primaryVariant: Color(0xFF2A3037),
      secondary: Color(0xFF231304),
      secondaryVariant: Color(0xFFFF5733),
      surface: Colors.white12,
      background: Color(0xFF121212),
      error: Color(0xFFB00020),
      onPrimary: Color(0xFFFFFFFF),
      onSecondary: Color(0xFFFFFFFF),
      onSurface: Color(0xFFFFFFFF),
      onBackground: Color(0xFFFFFFFF),
      onError: Color(0xFFFFFFFF),
      brightness: Brightness.light);

  static const Color lightGrey = Color(0xffc9cdd1);
  static const Color accentColor = Color(0xff0B735F);
  static const Color selectedBackground = Color(0x20A9E88B);
  static const Color selectedBorderColor = Color(0xff3EC032);
}
