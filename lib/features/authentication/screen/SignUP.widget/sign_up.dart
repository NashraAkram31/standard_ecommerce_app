import 'package:e_commerce_app/features/authentication/screen/SignUP.widget/SignUp_Form_Widget.dart';
import 'package:e_commerce_app/features/authentication/screen/logIn/login_widget/TDivider.dart';
import 'package:e_commerce_app/features/authentication/screen/logIn/login_widget/TSocialButton.dart';
import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final isdark = THelperFucntion.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  TText.sigupTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: TSizes.defaultSpaceBtwSection,
                ),
                // Form
                SignUpFoam(),
                // form end there
                SizedBox(
                  height: TSizes.defaultSpaceBtwSection,
                ),

                // now we will call the divider
                TDivider(dividerText: TText.orSignInWith.capitalize!),
                SizedBox(
                  height: TSizes.defaultSpaceBtwSection,
                ),
                // now we will call the social buttons
                SocialButton(),
              ],
            ),
          ),
        ));
  }
}
