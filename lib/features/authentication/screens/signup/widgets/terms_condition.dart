import 'package:flutter/material.dart';
import 'package:k_store/utils/constants/colors.dart';
import 'package:k_store/utils/constants/sizes.dart';
import 'package:k_store/utils/constants/text_strings.dart';
import 'package:k_store/utils/helpers/helper_functions.dart';

class KTermsAndConditionCheckBox extends StatelessWidget {
  const KTermsAndConditionCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunction.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 25,
          height: 25,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        const SizedBox(width: KSizes.spaceBtwItems),
        Expanded(
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: KText.iAgreeTo,
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: KText.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? KColors.white : KColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                  dark ? KColors.white : KColors.primary,
                )),
            TextSpan(
                text: KText.and,
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: KText.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? KColors.white : KColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                  dark ? KColors.white : KColors.primary,
                )),
          ])),
        )
      ],
    );
  }
}