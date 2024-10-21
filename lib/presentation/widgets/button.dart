import 'package:flutter/material.dart';
import 'package:wavid_teacher/common/style/color.dart';
import 'package:wavid_teacher/common/style/text_styles.dart';

class WButton extends StatefulWidget {
  final String text;
  final bool isSingleColor;
  final bool isSingleFontColor;
  final Color fontColor;
  final Function()? onTap;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final double? paddingWidth;
  final double? paddingHeight;
  final double? fontSize;
  final double? radius;

  const WButton({
    required this.text,
    required this.isSingleColor,
    required this.isSingleFontColor,
    required this.fontColor,
    this.onTap,
    this.backgroundColor,
    this.width,
    this.height,
    this.paddingWidth,
    this.paddingHeight,
    this.fontSize,
    this.radius,
    super.key,
  });

  @override
  State<WButton> createState() => _WButtonState();
}

class _WButtonState extends State<WButton> {
  @override
  Widget build(BuildContext context) {
    final text = Text(widget.text,
        style:
            TextStyles(fontSize: widget.fontSize ?? 20, color: widget.fontColor)
                .textStyleB);

    return GestureDetector(
        onTap: widget.onTap,
        child: Container(
            width: widget.width,
            height: widget.height ?? 60,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
                vertical: widget.paddingHeight ?? 16,
                horizontal: widget.paddingWidth ?? 0),
            decoration: BoxDecoration(
                color: widget.backgroundColor ?? WColors.defaultButtonColor,
                gradient: widget.isSingleColor ? null : WColors.gradation,
                borderRadius: BorderRadius.circular(widget.radius ?? 8)),
            child: widget.isSingleFontColor
                ? text
                : ShaderMask(
                    shaderCallback: (bounds) => WColors.gradation.createShader(
                        Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                    child: text)));
  }
}
