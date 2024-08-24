import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:k_store/common/widgets/login_signup/form_divider.dart';
import 'package:k_store/common/widgets/login_signup/social_buttons.dart';
import 'package:k_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:k_store/utils/constants/sizes.dart';
import 'package:k_store/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              /// Title
              Text(
                KText.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: KSizes.spaceBtwSections),

              /// Form
              const KSignupForm(),
              const SizedBox(height: KSizes.spaceBtwSections),
              ///Divider
              KFormDivider(dividerText: KText.orSignInWith.capitalize!),
              const SizedBox(height: KSizes.spaceBtwItems),

              /// Footer
              const KSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


