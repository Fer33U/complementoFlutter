import 'package:flutter/material.dart';

// agregar 0xFF mas el color hexadecimal
const Color _customColor = Color(0xFF6F0080);

// el guion bajo es para hacerlo privado
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange
];

class AppTheme {
  ThemeData theme() {
    return ThemeData(colorSchemeSeed: _colorThemes[0]);
  }

  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'El color se debe encontrar entre 0 y ${_colorThemes.length}');
}
