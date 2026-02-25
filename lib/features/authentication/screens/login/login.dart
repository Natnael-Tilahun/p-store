import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:p_store/common/styles/spacing_styles.dart';
import 'package:p_store/common/widgets/widgets_login_signup/form_divider.dart';
import 'package:p_store/common/widgets/widgets_login_signup/social_buttons.dart';
import 'package:p_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:p_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:p_store/utils/constants/sizes.dart';
import 'package:p_store/utils/constants/text_strings.dart';
import 'package:p_store/utils/helpers/helper_functions.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title, Sub-Title
              LoginHeader(isDark: isDark),

              /// Form
              LoginForm(),

              /// Divider
              FormDivider(dividerText: TTexts.tOrSignInWith.capitalize!),
              SizedBox(height: TSizes.spaceBtwSections),

              /// Footer
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
