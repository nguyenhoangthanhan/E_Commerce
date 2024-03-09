import 'package:flutter/material.dart';
import 'package:t_store_app3/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:t_store_app3/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store_app3/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store_app3/utils/constants/image_strings.dart';
import 'package:t_store_app3/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header -- Tutorial [Section = 3, video #2]
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// -- Search bar
                  TSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// -- Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        /// -- Categories
                        THomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),

            /// Body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Promo slider
                  TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),

                  /// -- Popular products
                  TGridLayout(
                    itemCount: 6,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
