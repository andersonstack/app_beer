import 'package:flutter/material.dart';

class AppIcons {
  static Icon fromString(String iconName) {
    switch (iconName.toUpperCase()) {
      case 'HOME':
        return Icon(Icons.home);
      case 'FILTER':
        return Icon(Icons.filter_list_alt);
      case 'SEARCH':
        return Icon(Icons.manage_search);
      default:
        return Icon(Icons.error); // Fallback para ícone de erro
    }
  }
}
