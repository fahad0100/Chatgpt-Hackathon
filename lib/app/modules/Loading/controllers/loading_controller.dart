import 'package:get/get.dart';
import 'package:hackathon_chatgpt/app/routes/app_pages.dart';

class LoadingController extends GetxController {
  //TODO: Implement LoadingController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 6), () {
      Get.offAllNamed(Routes.START_SCREEN);
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
