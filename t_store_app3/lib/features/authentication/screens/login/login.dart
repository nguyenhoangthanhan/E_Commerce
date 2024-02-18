import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store_app3/common/styles/spacing_styles.dart';
import 'package:t_store_app3/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_store_app3/features/authentication/screens/login/widgets/login_header.dart';
import 'package:t_store_app3/utils/constants/sizes.dart';
import 'package:t_store_app3/utils/constants/text_strings.dart';

import '../../../../common/widgets_login_signup/login_signup/form_divider.dart';
import '../../../../common/widgets_login_signup/login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-title
              const TLoginHeader(),

              /// Form
              const TLoginForm(),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Footer
              const TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
