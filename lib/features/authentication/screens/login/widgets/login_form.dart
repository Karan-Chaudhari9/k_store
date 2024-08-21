import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:k_store/utils/constants/sizes.dart';
import 'package:k_store/utils/constants/text_strings.dart';

class KLoginForm extends StatelessWidget {
  const KLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: KSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: KText.email),
            ),
            const SizedBox(height: KSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: KText.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: KSizes.spaceBtwInputFields / 2),

            /// Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(KText.rememberMe),
                  ],
                ),

                /// Forget Password
                TextButton(
                    onPressed: () {},
                    child: const Text(KText.forgetPassword))
              ],
            ),
            const SizedBox(height: KSizes.spaceBtwInputFields),

            /// Sign In Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(KText.signIn))),
            const SizedBox(height: KSizes.spaceBtwItems),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(KText.createAccount)),
            ),
          ],
        ),
      ),
    );
  }
}