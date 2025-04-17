import 'package:flutter/material.dart';

enum AppColor {
  scaffold,
  surface,
  marromClaro,
  bodyLarge,
  bodyMedium,
  background,
  backgroundColor,
  textPrimary,
  textSecondary,
  textOnPrimary,
  textOnSecondary,
  accent,
  error,
  link,
}

extension AppLight on AppColor {
  Color get color {
    switch (this) {
      case AppColor.surface:
        return const Color(0xFF3E2723);

      case AppColor.scaffold:
        return const Color.fromARGB(
          255,
          228,
          226,
          226,
        ); // Fundo principal claro

      case AppColor.marromClaro:
        return const Color(0xFFB77A4A); // Marrom claro (principal)

      case AppColor.bodyLarge:
      case AppColor.textPrimary:
        return const Color(0xFF212121); // Texto principal (alto contraste)

      case AppColor.bodyMedium:
      case AppColor.textSecondary:
        return const Color(0xFF3E2723); // Texto secundário / subtítulo

      case AppColor.background:
        return const Color.fromARGB(
          255,
          0,
          0,
          0,
        ); // Branco puro (background alternativo)

      case AppColor.backgroundColor:
        return const Color.fromARGB(
          255,
          27,
          26,
          26,
        ); // Para usar sobre superfícies amarelas claras

      case AppColor.textOnPrimary:
        return const Color.fromARGB(255, 26, 7, 7);

      case AppColor.textOnSecondary:
        return Colors.black;

      case AppColor.accent:
        return const Color(0xFFF2A20C); // Amarelo destaque

      case AppColor.error:
        return Colors.redAccent.shade700;

      case AppColor.link:
        return Colors.blue.shade700;
    }
  }
}

extension AppDark on AppColor {
  Color get color {
    switch (this) {
      case AppColor.surface:
        return const Color.fromARGB(255, 141, 141, 141);

      case AppColor.scaffold:
        return const Color(0xFF2E2B28); // fundo base dark

      case AppColor.marromClaro:
        return const Color(0xFF3A332F); // marrom escuro suave

      case AppColor.bodyLarge:
      case AppColor.textPrimary:
        return Colors.white; // texto principal com bom contraste

      case AppColor.bodyMedium:
      case AppColor.textSecondary:
        return Colors.grey; // texto secundário

      case AppColor.background:
        return const Color(
          0xFF1C1A18,
        ); // fundo alternativo (cartões, containers)

      case AppColor.backgroundColor:
        return Colors.white; // textos sobre fundo escuro

      case AppColor.textOnPrimary:
        return Colors.black; // textos sobre botões/elementos coloridos

      case AppColor.textOnSecondary:
        return Colors.black;

      case AppColor.accent:
        return const Color.fromARGB(
          255,
          238,
          227,
          207,
        ); // amarelo quente, bom destaque no escuro

      case AppColor.error:
        return Colors
            .redAccent
            .shade400; // vermelho mais claro visível no escuro

      case AppColor.link:
        return Colors.blue.shade300; // azul legível no fundo escuro
    }
  }
}
