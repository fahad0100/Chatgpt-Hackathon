import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextUtils extends StatelessWidget {
  const TextUtils(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.fontWeight,
      this.fontSize = 14,
      this.decoration,
      this.isShadow = false,
      this.textAlign});
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight? fontWeight;
  final TextDecoration? decoration;
  final bool isShadow;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.karla(
          shadows: isShadow == true
              ? [
                  BoxShadow(
                      blurRadius: 20,
                      color: Color.fromARGB(255, 241, 155, 93),
                      blurStyle: BlurStyle.outer,
                      offset: Offset(2, 2))
                ]
              : [],
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight),
    );
  }
}
