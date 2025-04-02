import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/media_query.dart';

// Classes
import 'package:app_beer/components/home.dart';

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> cervejas;
  final List<String> categorias;

  const MyApp({super.key, required this.cervejas, required this.categorias});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double size = adjustScreen(screenWidth, screenHeight);

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF2F2F2),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          surface: Color(0xFFA62508),
          primary: Color(0xFFF2A20C),
          secondary: Color(0xFFF2A20C),
          surfaceContainer: Color.fromARGB(255, 224, 223, 220),
        ),
        textTheme: TextTheme(
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
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFF2A20C),
            foregroundColor: Colors.white,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Color(0xFFFFFFFF),
            backgroundColor: Color(0xFFF2A20C),
          ),
        ),
      ),
      home: HomeView(
        cervejas: cervejas,
        categorias: categorias,
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      ),
    );
  }
}
