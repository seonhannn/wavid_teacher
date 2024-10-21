import 'package:flutter/material.dart';
import 'package:wavid_teacher/common/style/font_family.dart';

class TextStyles {
  final double fontSize;
  final Color color;
  final double? letterSpacing;

  TextStyles({
    this.fontSize = 18,
    this.color = Colors.black,
    this.letterSpacing,
  });

  TextStyle get textStyleB => TextStyle(
        fontFamily: WFontFamily.pretendard,
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        color: color,
        letterSpacing: letterSpacing,
      );

  TextStyle get textStyleSB => TextStyle(
        fontFamily: WFontFamily.pretendard,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        color: color,
        letterSpacing: letterSpacing,
      );

  TextStyle get textStyleR => TextStyle(
        fontFamily: WFontFamily.pretendard,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        color: color,
        letterSpacing: letterSpacing,
      );
}
