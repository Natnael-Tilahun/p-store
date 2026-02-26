import 'package:flutter/material.dart';
import 'package:p_store/utils/constants/colors.dart';
import 'package:p_store/utils/constants/sizes.dart';
import 'package:p_store/utils/constants/text_strings.dart';
import 'package:p_store/utils/helpers/helper_functions.dart';

class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        SizedBox(width: TSizes.spaceBtwItems),

        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${TTexts.tIAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${TTexts.tPrivacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  decoration: TextDecoration.underline,
                  color: isDark ? TColors.white : TColors.primary,
                  decorationColor: isDark ? TColors.white : TColors.primary,
                ),
              ),
              TextSpan(
                text: ' ${TTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${TTexts.tTermsOfUse} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  decoration: TextDecoration.underline,
                  color: isDark ? TColors.white : TColors.primary,
                  decorationColor: isDark ? TColors.white : TColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
