import 'package:flutter/material.dart';
import 'package:t_store_app3/common/widgets/appbar/appbar.dart';
import 'package:t_store_app3/common/widgets/appbar/tabbar.dart';
import 'package:t_store_app3/common/widgets/containers/rounded_container.dart';
import 'package:t_store_app3/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store_app3/common/widgets/layouts/grid_layout.dart';
import 'package:t_store_app3/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store_app3/common/widgets/texts/section_heading.dart';
import 'package:t_store_app3/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:t_store_app3/features/shop/screens/store/widgets/category_tab.dart';
import 'package:t_store_app3/utils/constants/colors.dart';
import 'package:t_store_app3/utils/constants/enums.dart';
import 'package:t_store_app3/utils/constants/image_strings.dart';
import 'package:t_store_app3/utils/constants/sizes.dart';
import 'package:t_store_app3/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/images/t_circular_image.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: const Text('Store'),
          actions: [
            TCartCounterIcon(iconColor: TColors.accent, onPressed: () {})
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// -- Search bar
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      const TSearchContainer(
                        text: "Search in Store",
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      /// -- Featured Brands
                      TSectionHeading(
                        title: 'Feature Brands',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),

                      /// -- Brands GRID
                      TGridLayout(
                          itemCount: 4,
                          maxAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: TRoundedContainer(
                                padding: const EdgeInsets.all(TSizes.sm),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    // -- Icon
                                    Flexible(
                                      child: TCircularImage(
                                        isNetworkImage: false,
                                        image: TImages.clothIcon,
                                        backgroundColor: Colors.transparent,
                                        overlayColor:
                                            THelperFunctions.isDarkMode(context)
                                                ? TColors.white
                                                : TColors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: TSizes.spaceBtwItems / 2,
                                    ),

                                    /// -- Text
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const TBrandTitleWithVerifiedIcon(
                                            title: 'Nike',
                                            brandTextSize: TextSizes.large,
                                          ),
                                          Text(
                                            '256 products with asjbsd si',
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ),

                /// -- Tabs
                bottom: const TTabBar(
                  tabs: [
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Clothes'),
                    ),
                    Tab(
                      child: Text('Cosmetics'),
                    ),
                  ],
                ),
              )
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
