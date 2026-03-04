import 'package:flutter/material.dart';
import 'package:p_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:p_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:p_store/common/widgets/layouts/grid_layout.dart';
import 'package:p_store/common/widgets/texts/section_heading.dart';
import 'package:p_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:p_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:p_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:p_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:p_store/utils/constants/colors.dart';
import 'package:p_store/utils/constants/image_strings.dart';
import 'package:p_store/utils/constants/sizes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar
                  const THomeAppbar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Searchbar
                  TSearchContainer(text: "Search in store", onTap: () {}),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        /// Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Promo Slider
                  TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Heading
                  TSectionHeading(title: 'Popular Products', onPressed: () {}),

                  /// Popular Products
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => TProductCardVertical(),
                  ),

                  // TProductCardVertical(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
