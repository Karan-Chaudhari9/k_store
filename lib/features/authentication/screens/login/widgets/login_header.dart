import 'package:flutter/material.dart';
import 'package:k_store/utils/constants/image_strings.dart';
import 'package:k_store/utils/constants/sizes.dart';
import 'package:k_store/utils/constants/text_strings.dart';

class KLoginHeader extends StatelessWidget {
  const KLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(height: 150, image: AssetImage(KImages.appLogo)),
        Text(KText.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: KSizes.sm),
        Text(KText.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}