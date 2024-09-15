import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store_app3/common/widgets/appbar/appbar.dart';
import 'package:t_store_app3/common/widgets/icons/t_circular_icon.dart';
import 'package:t_store_app3/utils/constants/colors.dart';
import 'package:t_store_app3/utils/constants/sizes.dart';
import 'package:t_store_app3/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/products/cart/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (_, __) => const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            itemCount: 4,
            itemBuilder: (_, index) => Column(
              children: [
                TCartItem(),
                const SizedBox(width: TSizes.spaceBtwItems),
                Row(
                  children: [
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
