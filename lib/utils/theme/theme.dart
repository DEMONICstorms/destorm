import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/theme/texttheme.dart';

class Apptheme {
  static ThemeData lightheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      textTheme: Apptexttheme.lighttext);

  static ThemeData darktheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black12,
      textTheme: Apptexttheme.darktext);
}
