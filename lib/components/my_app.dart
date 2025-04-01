import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Classes
import 'package:app_beer/components/home.dart';

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> cervejas;
  final List<String> categorias;

  const MyApp({super.key, required this.cervejas, required this.categorias});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF2F2F2),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          surface: Color(0xFFA62508),
          primary: Color(0xFFF2A20C),
          secondary: Color(0xFFF2A20C),
        ),
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.poppins(
            color: Theme.of(context).colorScheme.surface,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
          bodyMedium: GoogleFonts.poppins(
            color: Color(0xFFA62508),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          bodySmall: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      home: Home(cervejas: cervejas, categorias: categorias),
    );
  }
}
