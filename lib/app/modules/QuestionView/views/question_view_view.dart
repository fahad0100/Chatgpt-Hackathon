import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hackathon_chatgpt/app/widgets/Texts/TextUtils.dart';

import '../controllers/question_view_controller.dart';

class QuestionViewView extends GetView<QuestionViewController> {
  const QuestionViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: TextUtils(
                  text: 'Possible questions',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextUtils(
                text: Get.arguments.toString(),
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ));
  }
}
