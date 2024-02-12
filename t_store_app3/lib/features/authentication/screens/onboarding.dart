import 'package:flutter/material.dart';
import 'package:t_store_app3/utils/constants/image_strings.dart';
import 'package:t_store_app3/utils/constants/sizes.dart';
import 'package:t_store_app3/utils/constants/text_strings.dart';
import 'package:t_store_app3/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            children: [
              Column(
                children: [
                  Image(
                    width: THelperFunctions.screenWidth() * 0.8,
                    height: THelperFunctions.screenHeight() * 0.6,
                    image: const AssetImage(TImages.onBoardingImage1),
                  ),
                  Text(
                    TTexts.onBoardingTitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Text(
                    TTexts.onBoardingTitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          )

          ///
        ],
      ),
    );
  }
}
