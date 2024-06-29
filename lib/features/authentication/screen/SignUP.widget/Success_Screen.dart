import 'package:e_commerce_app/common/styles/Spacing_style.dart';
import 'package:e_commerce_app/features/authentication/screen/logIn/login.dart';

import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart';

class SuccessScreen extends StatelessWidget {
  String image, title, subtitle;
  final VoidCallback onPressed;

  SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed}) {
    // TODO: implement SuccessScreen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: TSpacingStyle.PaddingWithAppBarHeight * 2,
        child: Column(
          children: [
            Text(
              title,
              //TText.yourAccountCreatedTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.defaultSpaceBtwItem,
            ),
            Text(
              //TText.yourAccountCreatedSubTitle,
              subtitle,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.defaultSpaceBtwItem,
            ),
            // Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => LogIn());
                    // onPressed;
                  },
                  child: Text(TText.Continue)),
            ),
          ],
        ),
      )),
    );
  }
}
