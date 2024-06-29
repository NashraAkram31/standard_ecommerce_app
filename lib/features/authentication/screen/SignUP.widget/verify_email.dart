import 'package:e_commerce_app/features/authentication/screen/SignUP.widget/Success_Screen.dart';
import 'package:e_commerce_app/features/authentication/screen/logIn/login.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // is s back button khtm hojaega
        actions: [
          IconButton(
              onPressed: () {
                Get.offAll(() => const LogIn());
              },
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Image

              ///Title & Subtitle
              Text(
                TText.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.defaultSpaceBtwItem,
              ),
              Text(
                'support@codingwitht.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.defaultSpaceBtwItem,
              ),
              Text(
                TText.confirEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.defaultSpaceBtwItem,
              ),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => SuccessScreen(
                            title: TText.yourAccountCreatedTitle,
                            subtitle: TText.yourAccountCreatedSubTitle,
                            image: '',
                            onPressed: () => Get.to(() => LogIn()),
                          ));
                    },
                    child: Text(TText.Continue)),
              ),
              const SizedBox(
                height: TSizes.defaultSpaceBtwItem,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {
                      // Get.to(() => VerifyEmailScreen());
                    },
                    child: Text(TText.resentEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
