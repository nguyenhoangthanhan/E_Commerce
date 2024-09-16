import 'package:flutter/material.dart';
import 'package:t_store_app3/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_,__) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemCount: 10,
      itemBuilder: (_, index) => const Column(
        children: [
          /// Cart Item

        ],
      ),
    );
  }
}
