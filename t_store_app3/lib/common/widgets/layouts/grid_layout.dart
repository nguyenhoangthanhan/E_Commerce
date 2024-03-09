import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../products/product_cards/product_card_vertical.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key,
    required this.itemCount,
    this.maxAxisExtent = 288,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? maxAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: TSizes.gridViewSpacing,
        crossAxisSpacing: TSizes.gridViewSpacing,
        mainAxisExtent: maxAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
