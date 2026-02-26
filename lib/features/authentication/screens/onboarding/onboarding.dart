import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p_store/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:p_store/features/authentication/screens/onboarding/widgets/on_boarding_dot_navigation.dart';
import 'package:p_store/features/authentication/screens/onboarding/widgets/on_boarding_next_button.dart';
import 'package:p_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:p_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:p_store/utils/constants/image_strings.dart';
import 'package:p_store/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnboardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          OnBoardingSkip(),

          // Dot Navigation SmoothPageIndicator
          OnBoardingDotNavigation(),

          // Circular Button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
