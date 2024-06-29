import 'package:e_commerce_app/features/authentication/screen/passward_confirmation/Reset_passward.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassward extends StatelessWidget {
  const ForgetPassward({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: EdgeInsets.all(
            TSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Heading
              Text(
                TText.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.defaultSpaceBtwItem),
              Text(
                TText.forgetPaswordsubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),

              const SizedBox(height: TSizes.defaultSpaceBtwItem * 2),

              /// Textfield
              TextFormField(
                decoration: InputDecoration(
                    labelText: TText.email,
                    prefixIcon: Icon(Iconsax.direct_right)),
              ),
              const SizedBox(height: TSizes.defaultSpaceBtwItem * 2),

              /// Submit button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.off(() => ResetPassward());
                      },
                      child: const Text(TText.submit))),
            ],
          )),
    );
  }
}
