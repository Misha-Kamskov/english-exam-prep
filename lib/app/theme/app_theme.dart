import 'package:flutter/material.dart';

abstract class AppTheme {

  // ==========================================
  // LIGHT THEME COLORS
  // ==========================================

  static const Color primaryLight = Color(0xFF3187D8);
  static const Color primaryDeepLight = Color(0xFF2664A6);
  static const Color primarySoftLight = Color(0xFFDBF0FF);

  static const Color backgroundLight = Color(0xFFF8FAFC);
  static const Color cardLight = Color(0xFFFFFFFF);

  static const Color textLight = Color(0xFF192533);
  static const Color mutedForegroundLight = Color(0xFF65758B);
  static const Color mutedLight = Color(0xFFF1F5F8);

  static const Color secondaryLight = Color(0xFFF0F5F9);
  static const Color secondaryForegroundLight = Color(0xFF283D54);

  static const Color borderLight = Color(0xFFDEE5ED);

  static const Color destructiveLight = Color(0xFFE5493E);
  static const Color successLight = Color(0xFF319B6A);
  static const Color warningLight = Color(0xFFF58A0F);

  static const Color backdropLight = Color(0xFFE6EDF4);

  // ==========================================
  // DARK THEME COLORS
  // ==========================================

  static const Color primaryDark = Color(0xFF66BEF5);
  static const Color primaryDeepDark = Color(0xFF398FD0);
  static const Color primarySoftDark = Color(0xFF2A3F51);

  static const Color backgroundDark = Color(0xFF19222F);
  static const Color cardDark = Color(0xFF202D3C);

  static const Color textDark = Color(0xFFE5EBF0);
  static const Color mutedForegroundDark = Color(0xFF98A4B3);
  static const Color mutedDark = Color(0xFF283543);

  static const Color secondaryDark = Color(0xFF2A3747);
  static const Color secondaryForegroundDark = Color(0xFFE5EBF0);

  static const Color borderDark = Color(0xFF344151);

  static const Color destructiveDark = Color(0xFFE56A61);
  static const Color successDark = Color(0xFF5BC292);
  static const Color warningDark = Color(0xFFF3A449);

  static const Color backdropDark = Color(0xFF10151E);

  // ==========================================
  // BANNER COLORS
  // ==========================================

  static const Color bannerGradientStartLight = primaryLight;
  static const Color bannerGradientEndLight = primaryDeepLight;

  static const Color bannerGradientStartDark = Color(0xFF275782);
  static const Color bannerGradientEndDark = Color(0xFF1E2E43);

  static const Color bannerTextMutedLight = Color(0xFFD0E5F7);
  static const Color bannerTextMutedDark = Color(0xFFC4D8E9);

  static const Color bannerSubtextBlueLight = Color(0xFFDBF0FF);
  static const Color bannerSubtextBlueDark = Color(0xFF9DD9FF);

  // ==========================================
  // AVATAR COLORS
  // ==========================================

  static const Color avatarGradientStart = Color(0xFF3187D8);
  static const Color avatarGradientEnd = Color(0xFF6AC6F0);

  // ==========================================
  // CHART COLORS
  // ==========================================

  static const List<Color> chartColorsLight = [
    Color(0xFF3187D8),
    Color(0xFF6AC6F0),
    Color(0xFF38B279),
    Color(0xFFF69A31),
    Color(0xFFE86359),
  ];

  static const List<Color> chartColorsDark = [
    Color(0xFF66BEF5),
    Color(0xFF51C2EC),
    Color(0xFF5BC292),
    Color(0xFFF3A449),
    Color(0xFFE56A61),
  ];

  // ==========================================
  // LIGHT THEME
  // ==========================================

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,

      scaffoldBackgroundColor: backgroundLight,

      colorScheme: const ColorScheme.light(
        primary: primaryLight,
        onPrimary: Colors.white,
        secondary: secondaryLight,
        onSecondary: secondaryForegroundLight,
        surface: cardLight,
        onSurface: textLight,
        error: destructiveLight,
        onError: Colors.white,
        outline: borderLight,
      ),

      cardTheme: CardThemeData(
        color: cardLight,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: borderLight),
          borderRadius: BorderRadius.circular(16),
        ),
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundLight,
        foregroundColor: textLight,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle: TextStyle(
          color: textLight,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),

      dividerColor: borderLight,
      disabledColor: mutedForegroundLight,
    );
  }

  // ==========================================
  // DARK THEME
  // ==========================================

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,

      scaffoldBackgroundColor: backgroundDark,

      colorScheme: const ColorScheme.dark(
        primary: primaryDark,
        onPrimary: Color(0xFF152536),
        secondary: secondaryDark,
        onSecondary: secondaryForegroundDark,
        surface: cardDark,
        onSurface: textDark,
        error: destructiveDark,
        onError: Colors.white,
        outline: borderDark,
      ),

      cardTheme: CardThemeData(
        color: cardDark,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: borderDark),
          borderRadius: BorderRadius.circular(16),
        ),
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundDark,
        foregroundColor: textDark,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle: TextStyle(
          color: textDark,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),

      dividerColor: borderDark,
      disabledColor: mutedForegroundDark,
    );
  }
}
