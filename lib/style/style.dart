import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/media_query.dart';

class Style {
  static theme(final double screenHeight, final double screenWidth) {
    double size = adjustScreen(screenWidth, screenHeight);

    return ThemeData(
      scaffoldBackgroundColor: Color(0xFFF2F2F2),
      colorScheme: _colorScheme(),
      textTheme: _textTheme(screenWidth, size),
      elevatedButtonTheme: _elevatedButton(),
      textButtonTheme: _textButton(),
    );
  }

  static ColorScheme _colorScheme() {
    return ColorScheme.fromSwatch().copyWith(
      surface: Color(0xFFA62508),
      primary: Color(0xFFF2A20C),
      secondary: Color(0xFFF2A20C),
      surfaceContainer: Color.fromARGB(255, 224, 223, 220),
    );
  }

  static TextTheme _textTheme(screenWidth, size) {
    return TextTheme(
      bodyLarge: GoogleFonts.poppins(
        color: Color(0xFFA62508),
        fontSize: (screenWidth * size).clamp(14.0, 26.0),
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: Color(0xFFA62508),
        fontSize: (screenWidth * size).clamp(12.0, 22.0),
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.poppins(
        color: Colors.black,
        fontSize: (screenWidth * size * 0.8).clamp(10.0, 18.0),
        fontWeight: FontWeight.normal,
      ),
    );
  }

  static ElevatedButtonThemeData _elevatedButton() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFF2A20C),
        foregroundColor: Colors.white,
      ),
    );
  }

  static TextButtonThemeData _textButton() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Color(0xFFFFFFFF),
        backgroundColor: Color(0xFFF2A20C),
      ),
    );
  }
}
