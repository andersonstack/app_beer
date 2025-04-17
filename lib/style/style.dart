import 'package:app_beer/style/cores.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/media_query.dart';

class Style {
  static themeLight(final double screenHeight, final double screenWidth) {
    double size = adjustScreen(screenWidth, screenHeight);

    return ThemeData(
      scaffoldBackgroundColor: AppLight(AppColor.scaffold).color,
      colorScheme: _colorScheme(),
      textTheme: _beerTextTheme(screenWidth, size),
      // elevatedButtonTheme: _elevatedButton(),
      textButtonTheme: _textButton(),
    );
  }

  static ColorScheme _colorScheme() {
    return ColorScheme.fromSwatch().copyWith(
      primary: AppLight(AppColor.marromClaro).color,
      surface: AppLight(AppColor.surface).color,
    );
  }

  static TextTheme _beerTextTheme(double screenWidth, double size) {
    return TextTheme(
      // Títulos principais (nomes de cervejas)
      displayLarge: GoogleFonts.bebasNeue(
        color: AppLight(AppColor.textSecondary).color, // Marrom cerveja
        fontSize: (screenWidth * size * 1).clamp(24.0, 48.0),
        letterSpacing: 1.5,
      ),

      // Subtítulos (estilos de cerveja)
      displayMedium: GoogleFonts.lexendGiga(
        color: AppLight(AppColor.textOnSecondary).color, // Vermelho cerveja
        fontSize: (screenWidth * size).clamp(18.0, 32.0),
      ),

      // Texto de corpo (descrições)
      bodyLarge: GoogleFonts.raleway(
        color: AppLight(AppColor.textSecondary).color, // Marrom escuro
        fontSize: (screenWidth * size).clamp(14.0, 22.0),
        fontWeight: FontWeight.w500,
      ),

      // Texto secundário (IBU, ABV)
      bodyMedium: GoogleFonts.oxygen(
        color: AppLight(AppColor.textSecondary).color, // Marrom médio
        fontSize: (screenWidth * size * 0.9).clamp(12.0, 18.0),
      ),

      // Texto pequeno (notas, rodapé)
      bodySmall: GoogleFonts.oxygen(
        color: AppLight(AppColor.textPrimary).color,
        fontSize: (screenWidth * size * 0.7).clamp(10.0, 14.0),
      ),

      // Botões e ações
      labelLarge: GoogleFonts.bebasNeue(
        color: AppLight(AppColor.background).color,
        fontSize: (screenWidth * size * 0.9).clamp(16.0, 28.0),
        letterSpacing: 1.2,
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

  static ThemeData darkTheme(
    final double screenHeight,
    final double screenWidth,
  ) {
    double size = adjustScreen(screenWidth, screenHeight);

    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppDark(AppColor.scaffold).color,
      colorScheme: _darkColorScheme(),
      textTheme: _beerTextThemeDark(screenWidth, size),
      textButtonTheme: _textButtonDark(),
      appBarTheme: AppBarTheme(
        backgroundColor: AppDark(AppColor.marromClaro).color,
        iconTheme: IconThemeData(color: AppDark(AppColor.textOnPrimary).color),
        titleTextStyle: GoogleFonts.bebasNeue(
          color: AppDark(AppColor.textOnPrimary).color,
          fontSize: 24,
        ),
      ),
    );
  }

  static ColorScheme _darkColorScheme() {
    return const ColorScheme.dark().copyWith(
      primary: AppDark(AppColor.marromClaro).color,
      secondary: AppDark(AppColor.accent).color,
      surface: AppDark(AppColor.surface).color,
      surfaceContainer: AppDark(AppColor.background).color,
      error: AppDark(AppColor.error).color,
      onPrimary: AppDark(AppColor.textOnPrimary).color,
      onSecondary: AppDark(AppColor.textOnSecondary).color,
    );
  }

  static TextTheme _beerTextThemeDark(double screenWidth, double size) {
    return TextTheme(
      displayLarge: GoogleFonts.bebasNeue(
        color: AppDark(AppColor.textPrimary).color,
        fontSize: (screenWidth * size * 1).clamp(24.0, 48.0),
        letterSpacing: 1.5,
      ),
      displayMedium: GoogleFonts.lexendGiga(
        color: AppDark(AppColor.textSecondary).color,
        fontSize: (screenWidth * size).clamp(18.0, 32.0),
      ),
      bodyLarge: GoogleFonts.raleway(
        color: AppDark(AppColor.bodyLarge).color,
        fontSize: (screenWidth * size).clamp(14.0, 22.0),
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: GoogleFonts.oxygen(
        color: AppDark(AppColor.bodyMedium).color,
        fontSize: (screenWidth * size * 0.9).clamp(12.0, 18.0),
      ),
      bodySmall: GoogleFonts.oxygen(
        color: AppDark(AppColor.textSecondary).color,
        fontSize: (screenWidth * size * 0.7).clamp(10.0, 14.0),
      ),
      labelLarge: GoogleFonts.bebasNeue(
        color: AppDark(AppColor.textOnPrimary).color,
        fontSize: (screenWidth * size * 0.9).clamp(16.0, 28.0),
        letterSpacing: 1.2,
      ),
    );
  }

  static TextButtonThemeData _textButtonDark() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppDark(AppColor.textOnPrimary).color,
        backgroundColor: AppDark(AppColor.accent).color,
      ),
    );
  }
}
