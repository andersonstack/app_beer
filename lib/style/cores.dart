import 'package:flutter/material.dart';

enum AppColor {
  fundoPrimario,
  fundoSecundario,
  scaffold,
  corpoTexto,
  descricoes,
  titulos,
  subtitulos,
  links,
  erros,
  destaque,
  uncliked,
}

extension AppLight on AppColor {
  Color get color {
    switch (this) {
      case AppColor.uncliked:
        return Color(0xFFCED9B8);

      case AppColor.fundoPrimario:
        return Colors.grey[300]!;

      case AppColor.fundoSecundario:
        return Color.fromARGB(255, 128, 135, 150);

      case AppColor.descricoes:
      case AppColor.scaffold:
        return Color(0xFF121940);

      case AppColor.corpoTexto:
        return Colors.black87;

      case AppColor.descricoes:
        return Color(0xFF010440);

      case AppColor.titulos:
        return Colors.black;

      case AppColor.subtitulos:
        return Colors.black54;

      case AppColor.links:
        return Colors.blue;

      case AppColor.erros:
        return Colors.red;

      case AppColor.destaque:
        return Color(0xFFCED9B8);
    }
  }
}

extension AppDark on AppColor {
  Color get color {
    switch (this) {
      case AppColor.uncliked:
        return Color(0xFF2D3A2E);

      case AppColor.fundoPrimario:
        return Color(0xFF1E1E2C);

      case AppColor.fundoSecundario:
        return Color(0xFF2D3142);

      case AppColor.scaffold:
        return Color(0xFF0D111C);

      case AppColor.descricoes:
        return Color(0xFF8892BF);

      case AppColor.corpoTexto:
        return Colors.white70;

      case AppColor.titulos:
        return Colors.white;

      case AppColor.subtitulos:
        return Colors.white60;

      case AppColor.links:
        return Color(0xFF80CFFF);

      case AppColor.erros:
        return Color(0xFFFF6B6B);

      case AppColor.destaque:
        return Color(0xFFA3B18A);
    }
  }
}
