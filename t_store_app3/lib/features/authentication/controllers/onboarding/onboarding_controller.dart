import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables

  /// Update Current Index when Page Scroll
  void updatePageIndicator(index) {}

  /// Jump to the specific dot selected page.
  void dotNavigationClick(index) {}

  /// Update Current Index & jump to next page
  void nextPage() {}

  /// Update Current Index & jump to the last Page
  void skipPage() {}
}