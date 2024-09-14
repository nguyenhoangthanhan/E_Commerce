import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store_app3/common/widgets/texts/section_heading.dart';
import 'package:t_store_app3/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:t_store_app3/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:t_store_app3/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:t_store_app3/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store_app3/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:t_store_app3/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:t_store_app3/utils/constants/sizes.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            TProductImageSlider(dark: dark),

            /// 2 - Product Details
            Padding(
              padding: const EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// -- Rating & share button
                  const TRatingAndShare(),

                  /// -- Price, Title, Stock, & Brand
                  const TProductMetaData(),

                  /// -- Attributes
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Description
                  const TSectionHeading(
                      title: 'Descsription', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  ReadMoreText(
                    'Abc demo' * 50,
                    trimLines: 2,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  /// -- Review
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(
                        title: 'Review(199)',
                        onPressed: () {
                          Get.to(()=> const ProductReviewScreen());
                        },
                        showActionButton: true,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.arrow_right3,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
