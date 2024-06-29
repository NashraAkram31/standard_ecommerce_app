import 'package:e_commerce_app/common/styles/Spacing_style.dart';
import 'package:e_commerce_app/features/authentication/screen/logIn/login_widget/TDivider.dart';
import 'package:e_commerce_app/features/authentication/screen/logIn/login_widget/TSocialButton.dart';
import 'package:e_commerce_app/features/authentication/screen/logIn/login_widget/logIn_form.dart';
import 'package:e_commerce_app/features/authentication/screen/logIn/login_widget/logIn_header.dart';
import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/image_string.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final isdark = THelperFucntion.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.PaddingWithAppBarHeight,
          child: Column(children: [
            LogInHeader(),

            LogInForm(),
            //Divider
            TDivider(
              dividerText: TText.orSignInWith.capitalize!,
            ),
            // Divider end here
            SizedBox(
              height: TSizes.defaultSpaceBtwItem,
            ),

            // FOOTER
            SocialButton()
            // footer end here
          ]),
        ),
      ),
    );
  }
}
