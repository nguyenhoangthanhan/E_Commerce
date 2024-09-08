import 'package:flutter/material.dart';
import 'package:t_store_app3/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:t_store_app3/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store_app3/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:t_store_app3/utils/constants/sizes.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            TProductImageSlider(dark: dark),

            /// 2 - Product Details
            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// -- Rating & share button
                  TRatingAndShare(),

                  /// -- Price, Title, Stock, & Brand
                  TProductMetaData()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
