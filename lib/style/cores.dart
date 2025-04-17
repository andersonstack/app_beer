import 'package:flutter/material.dart';

enum AppColor {
  scaffold,
  primary,
  bodyLarge,
  bodyMedium,
  background,
  foreground,
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
      case AppColor.scaffold:
        return const Color(0xFFFBF8F5); // Fundo principal claro

      case AppColor.primary:
        return const Color(0xFFB77A4A); // Marrom claro (principal)

      case AppColor.bodyLarge:
      case AppColor.textPrimary:
        return const Color(0xFF212121); // Texto principal (alto contraste)

      case AppColor.bodyMedium:
      case AppColor.textSecondary:
        return const Color(0xFF3E2723); // Texto secundário / subtítulo

      case AppColor.background:
        return const Color(0xFFFFFFFF); // Branco puro (background alternativo)

      case AppColor.foreground:
        return Colors.black; // Para usar sobre superfícies amarelas claras

      case AppColor.textOnPrimary:
        return Colors.white;

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
      case AppColor.scaffold:
        return const Color(0xFF2E2B28); // fundo base dark

      case AppColor.primary:
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

      case AppColor.foreground:
        return Colors.white; // textos sobre fundo escuro

      case AppColor.textOnPrimary:
        return Colors.black; // textos sobre botões/elementos coloridos

      case AppColor.textOnSecondary:
        return Colors.black;

      case AppColor.accent:
        return const Color(
          0xFFF2A20C,
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
