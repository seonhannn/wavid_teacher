import 'package:flutter/material.dart';

class WColors {
  static const Color backgroundColor = Color(0xFF0E1113);
  static const Color bottomSheetColor = Color(0xFF1C1C22);
  static const Color black = Color(0xFF11161B);
  static const Color gray = Color(0xFF767676);
  static const Color red = Color(0xFFFF7070);
  static const Color blue = Color(0xFF7A8FFF);
  static const Color defaultButtonColor = Color(0xFF20252A);
  static const Color gradationMint = Color(0xFFA0FFFF);
  static const Color gradationPurple = Color(0xFFEDBAFF);
  static const Color mint = Color(0xFFADF5FF);
  static const Color purple = Color(0xFFE4C3FF);
  static const LinearGradient gradation = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      WColors.gradationMint,
      WColors.gradationPurple,
    ],
  );
}
