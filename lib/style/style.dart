import 'package:app_beer/style/cores.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/media_query.dart';

class Style {
  static themeLight(final double screenHeight, final double screenWidth) {
    double size = adjustScreen(screenWidth, screenHeight);

    return ThemeData(
      scaffoldBackgroundColor: AppLight(AppColor.fundoPrimario).color,
      colorScheme: _colorScheme(),
      textTheme: _beerTextTheme(screenWidth, size),
      iconButtonTheme: _iconButton(),
      cardColor: AppLight(AppColor.fundoSecundario).color,
    );
  }

  static ColorScheme _colorScheme() {
    return ColorScheme.fromSwatch().copyWith(
      primary: AppLight(AppColor.destaque).color,
      surface: AppLight(AppColor.scaffold).color,
    );
  }

  static TextTheme _beerTextTheme(double screenWidth, double size) {
    return TextTheme(
      displayLarge: GoogleFonts.bebasNeue(
        color: AppLight(AppColor.titulos).color,
        fontSize: (screenWidth * size * 1).clamp(24.0, 48.0),
        letterSpacing: 1.5,
      ),
      displayMedium: GoogleFonts.lexendGiga(
        color: AppLight(AppColor.titulos).color,
        fontSize: (screenWidth * size).clamp(18.0, 32.0),
      ),
      bodyLarge: GoogleFonts.raleway(
        color: AppLight(AppColor.titulos).color,
        fontSize: (screenWidth * size).clamp(14.0, 22.0),
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: GoogleFonts.oxygen(
        color: AppLight(AppColor.corpoTexto).color,
        fontSize: (screenWidth * size * 0.9).clamp(12.0, 18.0),
      ),
      bodySmall: GoogleFonts.oxygen(
        color: AppLight(AppColor.titulos).color,
        fontSize: (screenWidth * size * 0.7).clamp(10.0, 14.0),
      ),
      labelLarge: GoogleFonts.bebasNeue(
        color: AppLight(AppColor.fundoPrimario).color,
        fontSize: (screenWidth * size * 0.9).clamp(16.0, 28.0),
        letterSpacing: 1.2,
      ),
    );
  }

  static IconButtonThemeData _iconButton() {
    return IconButtonThemeData(
      style: TextButton.styleFrom(iconColor: AppLight(AppColor.uncliked).color),
    );
  }

  static ThemeData darkTheme(
    final double screenHeight,
    final double screenWidth,
  ) {
    double size = adjustScreen(screenWidth, screenHeight);

    return ThemeData(
      scaffoldBackgroundColor: AppDark(AppColor.scaffold).color,
      colorScheme: _darkColorScheme(),
      textTheme: _beerTextThemeDark(screenWidth, size),
      textButtonTheme: _textButtonDark(),
    );
  }

  static ColorScheme _darkColorScheme() {
    return const ColorScheme.dark().copyWith(
      primary: AppDark(AppColor.destaque).color,
      surface: AppDark(AppColor.fundoSecundario).color,
    );
  }

  static TextTheme _beerTextThemeDark(double screenWidth, double size) {
    return TextTheme(
      displayLarge: GoogleFonts.bebasNeue(
        color: AppDark(AppColor.titulos).color,
        fontSize: (screenWidth * size * 1).clamp(24.0, 48.0),
        letterSpacing: 1.5,
      ),
      displayMedium: GoogleFonts.lexendGiga(
        color: AppDark(AppColor.subtitulos).color,
        fontSize: (screenWidth * size).clamp(18.0, 32.0),
      ),
      bodyLarge: GoogleFonts.raleway(
        color: AppDark(AppColor.descricoes).color,
        fontSize: (screenWidth * size).clamp(14.0, 22.0),
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: GoogleFonts.oxygen(
        color: AppDark(AppColor.corpoTexto).color,
        fontSize: (screenWidth * size * 0.9).clamp(12.0, 18.0),
      ),
      bodySmall: GoogleFonts.oxygen(
        color: AppDark(AppColor.subtitulos).color,
        fontSize: (screenWidth * size * 0.7).clamp(10.0, 14.0),
      ),
      labelLarge: GoogleFonts.bebasNeue(
        color: AppDark(AppColor.titulos).color,
        fontSize: (screenWidth * size * 0.9).clamp(16.0, 28.0),
        letterSpacing: 1.2,
      ),
    );
  }

  static TextButtonThemeData _textButtonDark() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppDark(AppColor.titulos).color,
        backgroundColor: AppDark(AppColor.destaque).color,
      ),
    );
  }
}
