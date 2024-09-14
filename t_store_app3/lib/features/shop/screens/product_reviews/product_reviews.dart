import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store_app3/common/widgets/appbar/appbar.dart';
import 'package:t_store_app3/features/shop/screens/product_reviews/widgets/progess_indicator_and_rating.dart';
import 'package:t_store_app3/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:t_store_app3/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:t_store_app3/utils/constants/colors.dart';
import 'package:t_store_app3/utils/constants/sizes.dart';
import 'package:t_store_app3/utils/devices/device_utility.dart';

import '../../../../common/widgets/products/ratings/rating_indicator.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      /// -- App bar
      appBar: TAppBar(title: Text('Reviews & Ratings')),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews are verifed and are from people who use the same type of device that you use.'),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Overall Product Ratings
              TOverallProductRating(),
              TRatingBarIndicator(rating: 3.5),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),

            ],
          ),
        ),
      ),
    );
  }
}

