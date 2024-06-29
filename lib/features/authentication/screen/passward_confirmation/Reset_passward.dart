import 'package:e_commerce_app/features/authentication/screen/logIn/login.dart';

import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassward extends StatelessWidget {
  const ResetPassward({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                //Get.back();
                Get.to(() => LogIn());
              },
              icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// Image with 60%  of screen width

                /// Title and Subtitle
                Text(
                  TText.changeYourPasswordTitle,
                  //TText.yourAccountCreatedTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: TSizes.defaultSpaceBtwItem,
                ),
                Text(
                  //TText.yourAccountCreatedSubTitle,
                  TText.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: TSizes.defaultSpaceBtwItem,
                ),

                /// Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => ());
                        // onPressed;
                      },
                      child: Text(TText.done)),
                ),
                const SizedBox(
                  height: TSizes.defaultSpaceBtwItem,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {
                        // onPressed;
                      },
                      child: Text(TText.resentEmail)),
                ),
              ],
            )),
      ),
    );
  }
}
