import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:k_store/features/authentication/screens/signup/verify_email.dart';
import 'package:k_store/features/authentication/screens/signup/widgets/terms_condition.dart';
import 'package:k_store/utils/constants/sizes.dart';
import 'package:k_store/utils/constants/text_strings.dart';
import 'package:k_store/utils/helpers/helper_functions.dart';

class KSignupForm extends StatelessWidget {
  const KSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunction.isDarkMode(context);
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// First & Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: KText.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: KSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: KText.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(height: KSizes.spaceBtwInputFields),

          /// Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: KText.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: KSizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: KText.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: KSizes.spaceBtwInputFields),

          /// Phone Number
          TextFormField(
            decoration: const InputDecoration(
                labelText: KText.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: KSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            decoration: const InputDecoration(
              labelText: KText.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: KSizes.spaceBtwSections),

          /// Terms&Conditions Checkbox
          const KTermsAndConditionCheckBox(),
          const SizedBox(height: KSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(()=> const VerifyEmailScreen()),
              child: const Text(
                KText.createAccount
              ),
            ),
          ),

        ],
      ),
    );
  }
}


