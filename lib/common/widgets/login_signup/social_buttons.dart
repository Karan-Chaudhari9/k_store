import 'package:flutter/material.dart';
import 'package:k_store/utils/constants/colors.dart';
import 'package:k_store/utils/constants/image_strings.dart';
import 'package:k_store/utils/constants/sizes.dart';

class KSocialButtons extends StatelessWidget {
  const KSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: KColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: KSizes.icnosMd,
              height: KSizes.icnosMd,
              image: AssetImage(KImages.google),
            ),
          ),
        ),
        const SizedBox(width: KSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: KColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: KSizes.icnosMd,
              height: KSizes.icnosMd,
              image: AssetImage(KImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}