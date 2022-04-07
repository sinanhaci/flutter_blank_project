import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontTypeBaseConstant {

  static fontBaseNormal(Color color, double size,) {
    return GoogleFonts.lato(
        color: color, fontSize: size, fontWeight: normalFontWeight);
  }

   static fontBaseBold(Color color, double size,) {
    return GoogleFonts.lato(
        color: color, fontSize: size, fontWeight: boldFontWeight);
  }

  static const FontWeight boldFontWeight = FontWeight.w600;
  static const FontWeight normalFontWeight = FontWeight.normal;
}
