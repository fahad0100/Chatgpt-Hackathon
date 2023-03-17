import 'package:get/get.dart';

import '../controllers/question_view_controller.dart';

class QuestionViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuestionViewController>(
      () => QuestionViewController(),
    );
  }
}
