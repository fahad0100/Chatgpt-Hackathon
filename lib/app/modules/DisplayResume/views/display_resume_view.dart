import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_chatgpt/app/Server/Request/createQuestion.dart';
import 'package:hackathon_chatgpt/app/routes/app_pages.dart';
import 'package:hackathon_chatgpt/app/widgets/Buttons/ButtonCustom.dart';
import 'package:hackathon_chatgpt/app/widgets/Texts/TextUtils.dart';
import 'package:type_text/type_text.dart';

import '../controllers/display_resume_controller.dart';

class DisplayResumeView extends GetView<DisplayResumeController> {
  const DisplayResumeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEBE1DA),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  const BoxShadow(
                    color: Color(0xff000000),
                    blurRadius: 0,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TypeText(
                      Get.arguments[0].toString(),
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      duration: Duration(seconds: 3),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Obx(() => TypeText(
                          controller.dataJobTitle.value,
                          duration: Duration(seconds: 5),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Obx(
                    () => DisplayInfoCV(
                      title: "Contact",
                      content: controller.personInformation.value,
                      color: Color(0xffEBE1DA).withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Obx(
                    () => DisplayInfoCV(
                      title: "Summery",
                      color: Color(0xffEBE1DA).withOpacity(0.5),
                      content: controller.dataSummary.value,
                    ),
                  ),
                  Obx(
                    () => DisplayInfoCV(
                      title: "Education",
                      content: controller.dataEducation.value,
                    ),
                  ),
                  Obx(
                    () => DisplayInfoCV(
                      title: "Experience",
                      color: Color(0xffEBE1DA).withOpacity(0.5),
                      content: controller.dataExperience.value,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Obx(
                    () => DisplayInfoCV(
                      title: "Skills",
                      color: Color(0xffEBE1DA).withOpacity(0.5),
                      content: controller.dataSkills.value,
                    ),
                  ),
                  Obx(
                    () => DisplayInfoCV(
                      title: "Soft Skills",
                      content: controller.dataSoftSkills.value,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Obx(() => ButtonCustom(
                  title: 'Get Questions',
                  enable: controller.getQ.value,
                  color: Color(0xffcf8e55),
                  onPressed: controller.getQ.value == true
                      ? () async {
                          // var q = await methodCreateQuestion(
                          //     data: Get.arguments);
                          // Get.toNamed(Routes.QUESTION_VIEW, arguments: q);
                          controller.getQuestion();
                        }
                      : null,
                )),
            SizedBox(
              height: 25,
            ),
          ],
        ));
  }
}

class DisplayInfoCV extends StatelessWidget {
  const DisplayInfoCV(
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TypeText(
              title.trim(),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              duration: Duration(seconds: secondsTitle),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TypeText(
              content.trim(),
              style: GoogleFonts.karla(
                fontSize: fontSize,
              ),
              duration: Duration(seconds: secondsContent),
            ),
          ),
        ],
      ),
    );
  }
}
