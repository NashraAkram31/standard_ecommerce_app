import 'package:e_commerce_app/features/authentication/on_boarding_controllar/onboarding_controllar.dart';

import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

class Onbordingnextbutton extends StatelessWidget {
  const Onbordingnextbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getButtomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnbordController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? TColors.primary : Colors.black),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}
