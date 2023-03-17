import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextUtils extends StatelessWidget {
  const TextUtils(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.fontWeight,
      this.fontSize = 14,
      this.decoration});
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight? fontWeight;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.karla(
          color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
