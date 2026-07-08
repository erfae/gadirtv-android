import 'package:flutter/material.dart';

/// GadirTV visual identity — mirrors the Windows Electron app: pitch-black
/// background with a saturated red accent, thin white text, generous spacing.
class GtvTheme {
  static const bg = Color(0xFF050505);
  static const surface = Color(0xFF111111);
  static const surfaceHi = Color(0xFF1A1A1A);
  static const border = Color(0xFF262626);
  static const red = Color(0xFFDC2626);
  static const redHi = Color(0xFFEF4444);
  static const textDim = Color(0xFF8A8A8A);

  static ThemeData build() {
    const base = ColorScheme.dark(
      primary: red,
      secondary: redHi,
      surface: surface,
      onSurface: Colors.white,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: bg,
      colorScheme: base,
      fontFamily: 'Roboto',
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontWeight: FontWeight.w800, color: Colors.white),
        headlineMedium: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
        titleLarge: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white),
        labelLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white.withOpacity(0.05),
        hintStyle: const TextStyle(color: textDim),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(999),
          borderSide: const BorderSide(color: border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(999),
          borderSide: const BorderSide(color: border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(999),
          borderSide: const BorderSide(color: red, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: red,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
          shape: const StadiumBorder(),
          textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
        ),
      ),
    );
  }
}
