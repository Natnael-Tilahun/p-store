import 'package:flutter/material.dart';
import 'package:p_store/utils/constants/image_strings.dart';
import 'package:p_store/utils/constants/sizes.dart';
import 'package:p_store/utils/constants/text_strings.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({super.key, required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            height: 150,
            image: AssetImage(
              isDark ? TImages.lightAppLogo : TImages.darkAppLogo,
            ),
          ),
          Text(
            TTexts.tLoginTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: TSizes.sm),
          Text(
            TTexts.tLoginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
