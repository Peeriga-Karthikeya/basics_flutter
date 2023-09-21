import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const _primarycolorlight = Colors.lightBlueAccent;

  static const _primarycolordark = Colors.lightGreenAccent;


  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: _primarycolorlight,
    brightness: Brightness.light
    )
  );


  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primarycolordark
      ),

  );
}
