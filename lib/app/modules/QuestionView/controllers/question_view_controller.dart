import 'package:get/get.dart';
import 'package:hackathon_chatgpt/app/Server/Request/createQuestion.dart';

class QuestionViewController extends GetxController {
  //TODO: Implement QuestionViewController

  RxList questions = [].obs;
  @override
  void onInit() async {
    super.onInit();
    await getQuestionsFromGPT();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getQuestionsFromGPT() async {
    var getQ = await methodCreateQuestion(data: Get.arguments);
    questions.value = getQ.trim().split('\n');
  }
}
