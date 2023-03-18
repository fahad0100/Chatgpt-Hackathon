import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom(
      {super.key,
      this.onPressed,
      this.title = 'Send',
      this.width = 186,
      this.height = 52,
      this.color = Colors.grey,
      this.enable = true});
  final Function()? onPressed;
  final String title;
  final double width;
  final double height;
  final Color color;
  final bool enable;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                color: Colors.black, width: enable == true ? 1 : 0.1),
            boxShadow: enable == true
                ? [
                    BoxShadow(
                      color: Color(0xff000000),
                      blurRadius: 0,
                      offset: Offset(4, 4),
                    ),
                  ]
                : [],
            color: color,
          ),
          child: Text(
            title.toString(),
            style: GoogleFonts.karla(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: enable == true ? Colors.black : Colors.grey),
          ),
        ),
      ),
    );
  }
}
