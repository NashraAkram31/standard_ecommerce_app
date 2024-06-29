import 'package:e_commerce_app/features/authentication/screen/SignUP.widget/sign_up.dart';
import 'package:e_commerce_app/features/authentication/screen/passward_confirmation/forget_passward.dart';
import 'package:e_commerce_app/features/shop/screen/Home/home.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:e_commerce_app/navigation_menu.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
            padding:
                EdgeInsets.symmetric(vertical: TSizes.defaultSpaceBtwSection),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: TText.email),
                ),
                const SizedBox(height: TSizes.sm),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.password_check),
                      labelText: TText.password,
                      suffixIcon: Icon(Iconsax.eye_slash)),
                ),
                const SizedBox(height: TSizes.defaultSpaceBtwItem / 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        const Text(TText.rememberMe),
                      ],
                    ),
                    // forget passward button
                    TextButton(
                        onPressed: () {
                          Get.to(() => const ForgetPassward());
                        },
                        child: Text(TText.forgetPassword))
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => //  CustomNavigationBar()
                            HomeScreen());
                      },
                      child: Text(TText.signIn)),
                ),
                const SizedBox(
                  height: TSizes.defaultSpaceBtwItem,
                ),
                // create Account button
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {
                        Get.to(() => const SignUp());
                      },
                      child: Text(TText.createAccount)),
                )
              ],
            )));
  }
}
