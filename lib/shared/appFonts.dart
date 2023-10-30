import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appstylebold(
  double size,
  Color color,
) {
  return GoogleFonts.lato(
      fontSize: size, color: color, fontWeight: FontWeight.bold);
}

TextStyle appstylenormal(
  double size,
  Color color,
) {
  return GoogleFonts.lato(
      fontSize: size, color: color, fontWeight: FontWeight.normal);
}


TextStyle appstylefuncky(
  double size,
  Color color,
  FontWeight fw,
) {
  return GoogleFonts.poppins(
      fontSize: size, color: color, fontWeight: fw);
}

