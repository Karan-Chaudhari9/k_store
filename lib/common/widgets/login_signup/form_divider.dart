import 'package:flutter/material.dart';
import 'package:k_store/utils/constants/colors.dart';
import 'package:k_store/utils/helpers/helper_functions.dart';

class KFormDivider extends StatelessWidget {
  const KFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunction.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? KColors.darkGrey : KColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(dividerText,style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: dark ? KColors.darkGrey : KColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        )
      ],
    );
  }
}