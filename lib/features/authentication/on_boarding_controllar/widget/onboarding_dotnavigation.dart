import 'package:e_commerce_app/features/authentication/on_boarding_controllar/onboarding_controllar.dart';

import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // isko dekhna h isme kafi error ae th

class Onbordindotnavigation extends StatelessWidget {
  const Onbordindotnavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnbordController.instance;
    final dark = THelperFucntion.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getButtomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.light : TColors.dark, dotHeight: 6),
      ),
    );
  }
}
