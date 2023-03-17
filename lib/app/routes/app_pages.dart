import 'package:get/get.dart';

import '../modules/DisplayResume/bindings/display_resume_binding.dart';
import '../modules/DisplayResume/views/display_resume_view.dart';
import '../modules/Loading/bindings/loading_binding.dart';
import '../modules/Loading/views/loading_view.dart';
import '../modules/QuestionView/bindings/question_view_binding.dart';
import '../modules/QuestionView/views/question_view_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOADING,
      page: () => const LoadingView(),
      binding: LoadingBinding(),
    ),
    GetPage(
      name: _Paths.DISPLAY_RESUME,
      page: () => const DisplayResumeView(),
      binding: DisplayResumeBinding(),
    ),
    GetPage(
      name: _Paths.QUESTION_VIEW,
      page: () => const QuestionViewView(),
      binding: QuestionViewBinding(),
    ),
  ];
}
