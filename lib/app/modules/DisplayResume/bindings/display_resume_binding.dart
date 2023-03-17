import 'package:get/get.dart';

import '../controllers/display_resume_controller.dart';

class DisplayResumeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DisplayResumeController>(
      () => DisplayResumeController(),
    );
  }
}
