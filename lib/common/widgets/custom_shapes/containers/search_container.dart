import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:p_store/utils/constants/colors.dart';
import 'package:p_store/utils/constants/sizes.dart';
import 'package:p_store/utils/device/device_utility.dart';
import 'package:p_store/utils/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    this.icon = Iconsax.search_normal,
    required this.text,
    this.showBackground = true,
    this.showBorder = true,
  });

  final IconData? icon;
  final String text;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? isDark
                    ? TColors.dark
                    : TColors.light
              : Colors.transparent,
          border: showBorder ? Border.all(color: TColors.grey) : null,
          borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
        ),
        child: Row(
          children: [
            Icon(icon, color: TColors.darkGrey),
            SizedBox(width: TSizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
