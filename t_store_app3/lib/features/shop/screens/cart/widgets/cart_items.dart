import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store_app3/common/widgets/products/cart/cart_item.dart';
import 'package:t_store_app3/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store_app3/utils/constants/sizes.dart';

import '../../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key, this.showAddRemoveButton = false,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_,__) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          /// Cart Item
          const TCartItem(),
          if(showAddRemoveButton) const SizedBox(height: TSizes.spaceBtwItems),

          /// Add remove button row with total Price
          if(showAddRemoveButton) Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  /// Extra space
                  const SizedBox(width: 70),

                  /// Add Remove Button
                  TCircularIcon(
                    icon: Iconsax.minus,
                    width: 32,
                    height: 32,
                    size: TSizes.md,
                    color: THelperFunctions.isDarkMode(context)
                        ? TColors.light
                        : TColors.black,
                    backgroundColor: THelperFunctions.isDarkMode(context)
                        ? TColors.darkGrey
                        : TColors.light,
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems),
                ],
              ),

              /// -- Product total price
              const TProductPriceText(price: '256')
            ],
          )
        ],
      ),
    );
  }
}
