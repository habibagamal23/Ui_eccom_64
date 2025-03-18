import 'package:flutter/material.dart';

class ThemeApp{
  static ThemeData lightTheme= ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.yellow,
  );
  static ThemeData DarkTheme= ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.grey
  );


}