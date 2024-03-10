import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Apptexttheme {
  static TextTheme lighttext = TextTheme(
    titleSmall: GoogleFonts.salsa(
      color: Colors.black87,
      fontSize: 15,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
    ),
    displayLarge: GoogleFonts.poppins(decorationColor: Colors.amberAccent),
  );
  static TextTheme darktext = TextTheme(
    titleSmall: GoogleFonts.salsa(
      color: Colors.white,
      fontSize: 20,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
    ),
  );
}
