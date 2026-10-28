import 'package:flutter/material.dart';

abstract class AppTheme {

  static const Color primaryLight = Color(0xFF2563EB);
  static const Color primaryDark = Color(0xFF3B82F6);

  static const Color backgroundLight = Color(0xFFF8FAFC);
  static const Color backgroundDark = Color(0xFF070A13);

  static const Color cardLight = Color(0xFFFFFFFF);
  static const Color cardDark = Color(0xFF0D1320);

  static const Color textLight = Color(0xFF0F172A);
  static const Color textDark = Color(0xFFF8FAFC);

  static const Color mutedForegroundLight = Color(0xFF64748B);
  static const Color mutedForegroundDark = Color(0xFF94A3B8);
  static const Color mutedLight = Color(0xFFF1F5F9);
  static const Color mutedDark = Color(0xFF1E293B);

  static const Color borderLight = Color(0xFFE2E8F0);
  static const Color borderDark = Color(0xFF273248);

  static const Color destructiveLight = Color(0xFFEF4444);
  static const Color destructiveDark = Color(0xFFEF4444);


  static const Color emeraldBgLight = Color(0xFFECFDF5);
  static const Color emeraldTextLight = Color(0xFF059669);
  static const Color emeraldBgDark = Color(0x2610B981);
  static const Color emeraldTextDark = Color(0xFF6EE7B7);

  static const Color bannerGradientStart = Color(0xFF0F172A);
  static const Color bannerGradientEnd = Color(0xFF1E293B);
  static const Color bannerTextMuted = Color(0xFFCBD5E1);
  static const Color bannerSubtextBlue = Color(0xFF93C5FD);

  static const Color avatarGradientStart = Color(0xFF2563EB);
  static const Color avatarGradientEnd = Color(0xFF0EA5E9);



  static const List<Color> chartColorsLight = [
    Color(0xFFE76E50),
    Color(0xFF2A9D8F),
    Color(0xFF264653),
    Color(0xFFE9C46A),
    Color(0xFFF4A261),
  ];

  static const List<Color> chartColorsDark = [
    Color(0xFF2B6CB0),
    Color(0xFF2E8B57),
    Color(0xFFD69E2E),
    Color(0xFF805AD5),
    Color(0xFFD53F8C),
  ];


  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: backgroundLight,
      colorScheme: const ColorScheme.light(
        primary: primaryLight,
        surface: cardLight,
        onSurface: textLight,
        error: destructiveLight,
        outline: borderLight,
      ),
      cardTheme: CardThemeData(
        color: cardLight,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: borderLight),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundLight,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: textLight,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: backgroundDark,
      colorScheme: const ColorScheme.dark(
        primary: primaryDark,
        surface: cardDark,
        onSurface: textDark,
        error: destructiveDark,
        outline: borderDark,
      ),
      cardTheme: CardThemeData(
        color: cardDark,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: borderDark),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundDark,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: textDark,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}