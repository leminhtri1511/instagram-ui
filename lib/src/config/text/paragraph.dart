import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Paragraph extends StatelessWidget {
  const Paragraph({
    super.key,
    required this.content,
    this.style,
    this.fontWeight,
    this.color,
    this.overflow,
    this.textAlign,
    this.maxLines,
    this.fontSize,
  });
  final String content;
  final TextStyle? style;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: 'Quicksand',
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
      ),
      overflow: overflow,
    );
  }
}
