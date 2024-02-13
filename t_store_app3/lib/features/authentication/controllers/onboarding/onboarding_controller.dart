import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex = index;

  /// Jump to the specific dot selected page.
  void dotNavigationClick(index) {}

  /// Update Current Index & jump to next page
  void nextPage() {}

  /// Update Current Index & jump to the last Page
  void skipPage() {}
}