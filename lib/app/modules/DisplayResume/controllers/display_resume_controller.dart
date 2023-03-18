import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_chatgpt/app/Server/Request/createContact.dart';
import 'package:hackathon_chatgpt/app/Server/Request/creareSummary.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hackathon_chatgpt/app/Server/Request/createEducation.dart';
import 'package:hackathon_chatgpt/app/Server/Request/createExperience.dart';
import 'package:hackathon_chatgpt/app/Server/Request/createJobTitle.dart';
import 'package:hackathon_chatgpt/app/Server/Request/createSkills.dart';
import 'package:hackathon_chatgpt/app/Server/Request/createSoftSkills.dart';
import 'package:hackathon_chatgpt/app/routes/app_pages.dart';

class DisplayResumeController extends GetxController {
  //TODO: Implement DisplayResumeController

  RxBool getQ = false.obs;

  RxString personInformation = '0'.obs;
  RxString dataSummary = '0'.obs;
  RxString dataEducation = '0'.obs;
  RxString dataExperience = '0'.obs;
  RxString dataJobTitle = '0'.obs;
  RxString dataSkills = '0'.obs;
  RxString dataSoftSkills = '0'.obs;

  @override
  void onInit() async {
    super.onInit();
    Future.delayed(Duration(seconds: 1));
    await func1();
    Future.delayed(Duration(seconds: 1));
    await func2();
    Future.delayed(Duration(seconds: 1));
    await func3();
    Future.delayed(Duration(seconds: 1));
    await func4();
    Future.delayed(Duration(seconds: 1));
    await func5();
    Future.delayed(Duration(seconds: 1));
    await func6();
    Future.delayed(Duration(seconds: 1));
    await func7();
    Future.delayed(Duration(seconds: 1));
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  func1() async {
    dataJobTitle.value = await createJobTitle(data: Get.arguments[1]);
  }

  func2() async {
    personInformation.value = await createContact(data: Get.arguments[1]);
  }

  func3() async {
    dataSummary.value = await methodCreateSummary(data: Get.arguments[1]);
  }

  func4() async {
    dataEducation.value = await createEducation(data: Get.arguments[1]);
  }

  func5() async {
    dataExperience.value = await createExperience(data: Get.arguments[1]);
  }

  func6() async {
    dataSkills.value = await createSkills(data: Get.arguments[1]);
  }

  func7() async {
    dataSoftSkills.value = await createSoftSkills(data: Get.arguments[1]);
    Future.delayed(Duration(seconds: 3));
    getQ.value = true;
  }

  getQuestion() {
    print("----- getQuestion ------");
    var cv = '';

    var jobTitle = "Job Title: ${dataJobTitle.value}. \n";
    var summery = "Summery: ${dataSummary.value}. \n";
    var education = "Education: ${dataEducation.value}. \n";
    var experience = "Experience: ${dataExperience.value}. \n";
    var skills = "Skills: ${dataSkills.value}. \n";
    var softSkills = "Soft Skills: ${dataSoftSkills.value}. \n";
    cv = jobTitle + summery + education + experience + skills + softSkills;
    Get.toNamed(Routes.QUESTION_VIEW, arguments: cv);
  }
}
