import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:k_store/common/style/spacing_styles.dart';
import 'package:k_store/common/widgets/login_signup/form_divider.dart';
import 'package:k_store/common/widgets/login_signup/social_buttons.dart';
import 'package:k_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:k_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:k_store/utils/constants/sizes.dart';
import 'package:k_store/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: KSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & SubTitle
              const KLoginHeader(),

              /// Form
              const KLoginForm(),

              ///Divider
              KFormDivider(dividerText: KText.orSignInWith.capitalize!),
              const SizedBox(height: KSizes.spaceBtwSections),

              /// Footer
              const KSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}








