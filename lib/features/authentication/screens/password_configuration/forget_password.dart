import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:k_store/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:k_store/utils/constants/sizes.dart';
import 'package:k_store/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(KSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Headings
            Text(KText.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: KSizes.spaceBtwItems),
            Text(KText.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: KSizes.spaceBtwSections * 2),

            /// Text field
            TextFormField(
              decoration: const InputDecoration(
                  labelText: KText.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: KSizes.spaceBtwSections),

            /// Submit Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => const ResetPassword()),
                    child: const Text(KText.submit)))
          ],
        ),
      ),
    );
  }
}
