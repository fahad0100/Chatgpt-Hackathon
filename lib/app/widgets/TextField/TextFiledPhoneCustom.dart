import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_chatgpt/app/widgets/Texts/TextUtils.dart';

class TextFiledPhoneCustom extends StatelessWidget {
  TextFiledPhoneCustom(
      {super.key, required this.title, this.width = 0, this.controller});
  final String title;
  double width;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    width = width == 0 ? Get.width : width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextUtils(text: title),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            SizedBox(width: width / 10, child: TextUtils(text: "+966")),
            SizedBox(
              width: 8,
            ),
            SizedBox(
              height: 44,
              width: Get.width < Get.height
                  ? Get.width - (width / 6)
                  : Get.width - (width / 7),
              child: TextField(
                controller: controller,
                style: GoogleFonts.karla(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  filled: true,
                  fillColor: Color(0xffEBE1DA),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffEBE1DA),
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
        ),
      ],
    );
  }
}
