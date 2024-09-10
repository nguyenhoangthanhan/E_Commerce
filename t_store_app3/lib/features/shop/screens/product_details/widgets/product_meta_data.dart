import 'package:flutter/material.dart';
import 'package:t_store_app3/common/widgets/containers/rounded_container.dart';
import 'package:t_store_app3/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store_app3/utils/constants/colors.dart';
import 'package:t_store_app3/utils/constants/sizes.dart';

import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        /// -- Price & Sale Price
        Row(
          children: [

            /// Sale Tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                '25%',
                style: Theme
                    .of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            /// Price
            Text(
              '\$250',
              style: Theme
                  .of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            TProductPriceText(
              price: '175',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems / 1.5),

        /// -- Title
        const TProductTitleText(
          title: 'Green Nike sports shirt',
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// -- Stock Status
        Row(
          children: [
            const TProductTitleText(
              title: 'Status',
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// -- Brand


      ],
    );
  }
}
