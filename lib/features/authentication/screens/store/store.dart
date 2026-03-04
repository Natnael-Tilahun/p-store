import 'package:flutter/material.dart';
import 'package:p_store/common/widgets/appbar/appbar.dart';
import 'package:p_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:p_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:p_store/common/widgets/images/circular_image.dart';
import 'package:p_store/common/widgets/layouts/grid_layout.dart';
import 'package:p_store/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:p_store/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:p_store/common/widgets/texts/section_heading.dart';
import 'package:p_store/utils/constants/colors.dart';
import 'package:p_store/utils/constants/enums.dart';
import 'package:p_store/utils/constants/image_strings.dart';
import 'package:p_store/utils/constants/sizes.dart';
import 'package:p_store/utils/helpers/helper_functions.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppbar(
        title: Text("Store", style: Theme.of(context).textTheme.headlineMedium),
        actions: [CartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, index) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: isDark ? TColors.black : TColors.white,
              expandedHeight: 440,
              pinned: true,
              floating: true,

              flexibleSpace: Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    /// Search Bar
                    SizedBox(height: TSizes.spaceBtwItems),
                    TSearchContainer(
                      text: "Search in store",
                      showBackground: false,
                      showBorder: true,
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(height: TSizes.spaceBtwSections),

                    /// Featured Brands
                    TSectionHeading(title: 'Featured Brands', onPressed: () {}),
                    SizedBox(height: TSizes.spaceBtwItems / 1.5),

                    TGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: TRoundedContainer(
                            padding: EdgeInsets.all(TSizes.sm),
                            backgroundColor: Colors.transparent,
                            showBorder: true,
                            child: Row(
                              children: [
                                /// Icon
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
                                SizedBox(width: TSizes.spaceBtwItems / 2),

                                /// Text
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TBrandTitleWithVerifiedIcon(
                                        title: "Nike",
                                        brandTextSize: TextSizes.large,
                                      ),
                                      Text(
                                        "256 Products",
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
