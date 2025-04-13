import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/media_query.dart';

class Style {
  static theme(final double screenHeight, final double screenWidth) {
    double size = adjustScreen(screenWidth, screenHeight);

    return ThemeData(
      scaffoldBackgroundColor: Color(0xFFF2F2F2),
      colorScheme: _colorScheme(),
      textTheme: _beerTextTheme(screenWidth, size),
      // elevatedButtonTheme: _elevatedButton(),
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

  static TextTheme _beerTextTheme(double screenWidth, double size) {
    return TextTheme(
      // Títulos principais (nomes de cervejas)
      displayLarge: GoogleFonts.bebasNeue(
        color: Color(0xFF8B4513), // Marrom cerveja
        fontSize: (screenWidth * size * 1).clamp(24.0, 48.0),
        letterSpacing: 1.5,
      ),

      // Subtítulos (estilos de cerveja)
      displayMedium: GoogleFonts.lexendGiga(
        color: Color.fromARGB(255, 0, 0, 0), // Vermelho cerveja
        fontSize: (screenWidth * size).clamp(18.0, 32.0),
      ),

      // Texto de corpo (descrições)
      bodyLarge: GoogleFonts.raleway(
        color: Color(0xFF3E2723), // Marrom escuro
        fontSize: (screenWidth * size).clamp(14.0, 22.0),
        fontWeight: FontWeight.w500,
      ),

      // Texto secundário (IBU, ABV)
      bodyMedium: GoogleFonts.oxygen(
        color: Color(0xFF5D4037), // Marrom médio
        fontSize: (screenWidth * size * 0.9).clamp(12.0, 18.0),
      ),

      // Texto pequeno (notas, rodapé)
      bodySmall: GoogleFonts.oxygen(
        color: Colors.brown[600],
        fontSize: (screenWidth * size * 0.7).clamp(10.0, 14.0),
      ),

      // Botões e ações
      labelLarge: GoogleFonts.bebasNeue(
        color: Colors.white,
        fontSize: (screenWidth * size * 0.9).clamp(16.0, 28.0),
        letterSpacing: 1.2,
      ),
    );
  }

  // static ElevatedButtonThemeData _elevatedButton() {
  //   return ElevatedButtonThemeData(
  //     style: ElevatedButton.styleFrom(
  //       backgroundColor: Color(0xFFF2A20C),
  //       foregroundColor: Colors.white,
  //     ),
  //   );
  // }

  static TextButtonThemeData _textButton() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Color(0xFFFFFFFF),
        backgroundColor: Color(0xFFF2A20C),
      ),
    );
  }
}
