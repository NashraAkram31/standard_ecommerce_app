import 'package:e_commerce_app/features/authentication/screen/SignUP.widget/Sign_Up%20_term_and_cond.dart';
import 'package:e_commerce_app/features/authentication/screen/SignUP.widget/verify_email.dart';
import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpFoam extends StatelessWidget {
  const SignUpFoam({super.key});

  @override
  Widget build(BuildContext context) {
    final isdark = THelperFucntion.isDarkMode(context);
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TextFormField(
              expands: false,
              decoration: InputDecoration(
                  labelText: TText.firstName, prefixIcon: Icon(Iconsax.user)),
            )),
            const SizedBox(
              width: TSizes.spaceBtwFields,
            ),
            Expanded(
                child: TextFormField(
              expands: false,
              decoration: InputDecoration(
                  labelText: TText.lastName, prefixIcon: Icon(Iconsax.user)),
            ))
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwFields,
        ),
        TextFormField(
          expands: false,
          decoration: InputDecoration(
              labelText: TText.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwFields,
        ),
        TextFormField(
          expands: false,
          decoration: InputDecoration(
              labelText: TText.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwFields,
        ),
        TextFormField(
          expands: false,
          decoration: InputDecoration(
              labelText: TText.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwFields,
        ),
        //passward
        TextFormField(
          obscureText: true,
          expands: false,
          decoration: InputDecoration(
              labelText: TText.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwFields,
        ),

        // term and condtiion
        TermCondition(),

        SizedBox(
          height: TSizes.defaultSpaceBtwSection,
        ),
        // SignUp_Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {
                Get.to(() => VerifyEmailScreen());
              },
              child: Text(TText.createAccount)),
        )
      ],
    ));
  }
}
