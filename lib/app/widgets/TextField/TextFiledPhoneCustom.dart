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
            SizedBox(width: width / 10, child: const TextUtils(text: "+966")),
            const SizedBox(
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
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  filled: true,
                  hintText: '0555555555',
                  hintStyle: GoogleFonts.karla(
                      fontSize: 16, color: Colors.grey.withOpacity(0.5)),
                  fillColor: const Color(0xffEBE1DA),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffEBE1DA),
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x7fc3bab7),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
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
