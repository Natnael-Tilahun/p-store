import 'package:flutter/material.dart';
import 'package:p_store/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:p_store/utils/constants/colors.dart';
import 'package:p_store/utils/constants/sizes.dart';
import 'package:p_store/utils/device/device_utility.dart';
import 'package:p_store/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () {
          OnBoardingController.instance.nextPage();
        },
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: isDark ? TColors.primary : Colors.black,
        ),
        child: Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
