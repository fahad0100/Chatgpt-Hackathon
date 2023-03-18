import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_chatgpt/app/modules/DisplayResume/views/display_resume_view.dart';
import 'package:hackathon_chatgpt/app/widgets/Texts/TextUtils.dart';
import 'package:type_text/type_text.dart';

import '../controllers/question_view_controller.dart';

class QuestionViewView extends GetView<QuestionViewController> {
  const QuestionViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Center(
                child: TextUtils(
                  text: 'Possible questions',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Obx(
                  () => Column(
                      children: List.generate(
                    controller.questions.value.length,
                    (index) => DisplayIQuestions(
                      title: "Possible questions",
                      color: Color(0xffEBE1DA).withOpacity(0.2),
                      content: controller.questions[index],
                      fontSize: 16,
                    ),
                  )),
                ),
              ),
            ),
          ],
        ));
  }
}

class DisplayIQuestions extends StatelessWidget {
  const DisplayIQuestions(
      {super.key,
      required this.title,
      required this.content,
      this.color = Colors.transparent,
      this.secondsTitle = 3,
      this.secondsContent = 5,
      this.fontSize = 14});
  final String title;
  final String content;
  final Color color;
  final int secondsTitle;
  final int secondsContent;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: Get.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: Get.width,
          height: 80,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: const Color(0xffEBE1DA),
              borderRadius: BorderRadius.circular(5)),
          alignment: Alignment.centerLeft,
          child: TypeText(
            content.trim(),
            style: GoogleFonts.karla(
                fontSize: fontSize, fontWeight: FontWeight.bold),
            duration: Duration(seconds: secondsContent),
          ),
        ),
      ),
    );
  }
}
