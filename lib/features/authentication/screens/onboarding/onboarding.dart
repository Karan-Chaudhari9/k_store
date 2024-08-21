import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:k_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:k_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:k_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:k_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:k_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:k_store/utils/constants/image_strings.dart';
import 'package:k_store/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                lottie: KImages.onBoardingLottie1,
                title: KText.onBoardingTitle1,
                subtitle: KText.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                lottie: KImages.onBoardingLottie2,
                title: KText.onBoardingTitle2,
                subtitle: KText.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                lottie: KImages.onBoardingLottie3,
                title: KText.onBoardingTitle3,
                subtitle: KText.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingNavigation(),

          /// Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}


