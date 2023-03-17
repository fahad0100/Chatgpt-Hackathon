import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hackathon_chatgpt/app/Server/Request/createQuestion.dart';
import 'package:hackathon_chatgpt/app/routes/app_pages.dart';
import 'package:hackathon_chatgpt/app/widgets/Buttons/ButtonCustom.dart';
import 'package:hackathon_chatgpt/app/widgets/Texts/TextUtils.dart';

import '../controllers/display_resume_controller.dart';

class DisplayResumeView extends GetView<DisplayResumeController> {
  const DisplayResumeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEBE1DA),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              child: TextUtils(
                  text: "Your resume",
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: Get.height - Get.width / 2),
              child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.only(left: 8, right: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff000000),
                          blurRadius: 0,
                          offset: Offset(4, 4),
                        ),
                      ],
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Text(Get.arguments.toString())),
            ),
            SizedBox(
              height: 25,
            ),
            ButtonCustom(
              title: 'Get Questions',
              onPressed: () async {
                var q =
                    await methodCreateQuestion(data: Get.arguments.toString());
                Get.toNamed(Routes.QUESTION_VIEW, arguments: q);
              },
            ),
          ],
        ));
  }
}
