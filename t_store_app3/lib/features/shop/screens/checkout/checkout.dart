import 'package:flutter/material.dart';
import 'package:t_store_app3/common/widgets/products/cart/cart_item.dart';
import 'package:t_store_app3/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:t_store_app3/utils/constants/sizes.dart';

import '../../../../common/widgets/appbar/appbar.dart';


class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Item in cart
              const TCartItems(showAddRemoveButton: false),
              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}


