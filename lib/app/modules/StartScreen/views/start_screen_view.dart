import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hackathon_chatgpt/app/routes/app_pages.dart';
import 'package:hackathon_chatgpt/app/widgets/Buttons/ButtonCustom.dart';
import 'package:hackathon_chatgpt/app/widgets/Texts/TextUtils.dart';

import '../controllers/start_screen_controller.dart';

class StartScreenView extends GetView<StartScreenController> {
  const StartScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffebe1da),
        body: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/Logo.png',
              width: 90,
              height: 90,
            ),
            SizedBox(
              height: 50,
            ),
            const Center(
                child: TextUtils(
              text: "Welcome",
              fontSize: 40,
              isShadow: true,
            )),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: Get.width / 2,
                width: Get.width / 2,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: const TextUtils(
                    textAlign: TextAlign.center,
                    fontSize: 24,
                    text:
                        'Have the Chatgpt ​​write your resume by your information'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ButtonCustom(
              color: const Color(0xffcf8e55),
              enable: true,
              onPressed: () {
                Get.offAllNamed(Routes.HOME);
              },
            ),
          ],
        ));
  }
}
