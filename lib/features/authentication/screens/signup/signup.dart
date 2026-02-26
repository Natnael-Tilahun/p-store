import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:p_store/common/widgets/widgets_login_signup/form_divider.dart';
import 'package:p_store/common/widgets/widgets_login_signup/social_buttons.dart';
import 'package:p_store/features/authentication/screens/signup/widgets/t_signup_form.dart';
import 'package:p_store/utils/constants/sizes.dart';
import 'package:p_store/utils/constants/text_strings.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                TTexts.tSignUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: TSizes.spaceBtwSections),

              /// Form
              TSignupForm(),
              SizedBox(height: TSizes.spaceBtwSections),

              /// Divider
              TFormDivider(dividerText: TTexts.tOrSignUpWith.capitalize!),
              SizedBox(height: TSizes.spaceBtwSections),

              /// Social Button
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
