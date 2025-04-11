import 'package:flutter/material.dart';

class BtnStyle {
  // Estilo padrão (do seu tema global)
  static ButtonStyle get defaultStyle => ElevatedButton.styleFrom(
    backgroundColor: Colors.blue[700],
    foregroundColor: Colors.white,
  );

  // Estilo para botão de deletar
  static ButtonStyle get deleteStyle => ElevatedButton.styleFrom(
    backgroundColor: Colors.red[700],
    foregroundColor: Colors.white,
  );

  // Estilo para botão de editar
  static ButtonStyle get editStyle => ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFFF2A20C),
    foregroundColor: Colors.white,
  );
}
