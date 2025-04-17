import 'package:flutter/material.dart';

class BtnStyle {
  static ButtonStyle get defaultStyle => ElevatedButton.styleFrom(
    backgroundColor: Colors.blue[700],
    foregroundColor: Colors.white,
  );

  static ButtonStyle get deleteStyle => ElevatedButton.styleFrom(
    backgroundColor: Colors.red[700],
    foregroundColor: Colors.white,
  );

  static ButtonStyle get editStyle => ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFFF2A20C),
    foregroundColor: Colors.white,
  );
}
