import 'package:flutter/material.dart';
import 'package:k_store/utils/constants/sizes.dart';
import 'package:k_store/utils/helpers/helper_functions.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.lottie,
  });

  final String title, subtitle, lottie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(KSizes.defaultSpace),
      child: Column(
        children: [
          Lottie.asset(
            width: KHelperFunction.screenWidth() * 0.8,
            height: KHelperFunction.screenHeight() * 0.6,
            lottie,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: KSizes.spaceBtwItems),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
