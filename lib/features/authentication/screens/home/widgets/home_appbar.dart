import 'package:flutter/material.dart';
import 'package:p_store/common/widgets/appbar/appbar.dart';
import 'package:p_store/common/widgets/product_cart/cart_counter_icon.dart';
import 'package:p_store/utils/constants/colors.dart';
import 'package:p_store/utils/constants/text_strings.dart';

class THomeAppbar extends StatelessWidget {
  const THomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppBarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: TColors.grey),
          ),
          Text(
            TTexts.homeAppBarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!
                .apply(color: TColors.white),
          ),
        ],
      ),
      actions: [
        CartCounterIcon(
          iconColor: TColors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}
