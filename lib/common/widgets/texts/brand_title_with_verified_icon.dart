import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:p_store/common/widgets/texts/brand_title.dart';
import 'package:p_store/utils/constants/colors.dart';
import 'package:p_store/utils/constants/enums.dart';
import 'package:p_store/utils/constants/sizes.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: TBrandTitle(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        SizedBox(width: TSizes.xs),
        Icon(Iconsax.verify5, size: TSizes.iconXs, color: iconColor),
      ],
    );
  }
}
