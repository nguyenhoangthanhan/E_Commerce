import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store_app3/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:t_store_app3/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:t_store_app3/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:t_store_app3/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:t_store_app3/utils/constants/colors.dart';
import 'package:t_store_app3/utils/constants/image_strings.dart';
import 'package:t_store_app3/utils/constants/sizes.dart';
import 'package:t_store_app3/utils/constants/text_strings.dart';
import 'package:t_store_app3/utils/devices/device_utility.dart';
import 'package:t_store_app3/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              )
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? TColors.primary : Colors.black,
        ),
        child: const Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
