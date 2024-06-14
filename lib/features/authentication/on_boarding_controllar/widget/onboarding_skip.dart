import 'package:e_commerce_app/features/authentication/on_boarding_controllar/onboarding_controllar.dart';

import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Skip extends StatelessWidget {
  const Skip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnbordController.instance;
    // final dark = THelperFucntion.isDarkMode(context);
    return Positioned(
        top: TDeviceUtils.getAppbarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
            onPressed: () {
              controller.skipPage();
            },
            child: Text("Skip")));
  }
}
