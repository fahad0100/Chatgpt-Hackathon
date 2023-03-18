import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_chatgpt/app/widgets/Texts/TextUtils.dart';

class TextFiledCustom extends StatelessWidget {
  TextFiledCustom(
      {super.key,
      required this.title,
      this.width = 0,
      this.controller,
      this.hintText,
      this.onChanged});
  final String title;
  double width;
  final TextEditingController? controller;
  final String? hintText;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    width = width == 0 ? Get.width : width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextUtils(
          text: title,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 44,
          width: width,
          child: TextField(
            controller: controller,
            onChanged: onChanged,
            style: GoogleFonts.karla(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              filled: true,
              fillColor: Color(0xffebe1da),
              hintText: hintText,
              hintStyle: GoogleFonts.karla(
                  fontSize: 16, color: Colors.grey.withOpacity(0.5)),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffebe1da),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x7fc3bab7),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x7fc3bab7),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//------------------

//--------
