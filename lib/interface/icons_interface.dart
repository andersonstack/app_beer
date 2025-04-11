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
      case 'LIST':
        return Icon(Icons.format_list_bulleted_rounded);
      case 'EDIT':
        return Icon(Icons.edit);
      case 'DELETE':
        return Icon(Icons.delete);
      default:
        return Icon(Icons.error); // Fallback para ícone de erro
    }
  }
}
