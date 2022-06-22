import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potfolio/Utilities/colors.dart';
import 'package:potfolio/Utilities/const.dart';

class Style {
  static TextStyle heading2 = GoogleFonts.getFont('Roboto Slab',
      fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1,
  );
  static TextStyle heading3 = GoogleFonts.getFont('Roboto Slab',
      fontSize: 14,
      letterSpacing: 1,
      color: AppColors.kTextColor,
  );
  static TextStyle heading1 = GoogleFonts.getFont('Roboto Slab',
    fontSize: w!/40,
    letterSpacing: 1,
    color: Colors.white,
  );
  static TextStyle heading4 = GoogleFonts.getFont('Roboto Slab',
    fontSize: 12,
    letterSpacing: 1,
    color: AppColors.kTextColor,
  );
}

