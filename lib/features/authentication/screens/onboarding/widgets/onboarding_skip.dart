import 'package:flutter/material.dart';
import 'package:k_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:k_store/utils/constants/sizes.dart';
import 'package:k_store/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: KDeviceUtils.getAppBarHeight(),
        right: KSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnboardingController.instance.skipPage(),
          child: const Text('Skip'),
        ));
  }
}