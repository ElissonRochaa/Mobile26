import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeLight {
  static final ThemeData theme = ThemeData(
    textTheme: GoogleFonts.homenajeTextTheme(),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFFE47034),
      onPrimary: Colors.white,
      secondary: Color(0xFFF7D4C1),
      onSecondary: Colors.black,
      tertiary: Color(0xFFB5855D),
      onTertiary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
  );
}
