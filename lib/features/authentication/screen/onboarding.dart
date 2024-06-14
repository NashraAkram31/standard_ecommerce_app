import 'package:e_commerce_app/features/authentication/on_boarding_controllar/onboarding_controllar.dart';
import 'package:e_commerce_app/features/authentication/on_boarding_controllar/widget/onboarding_dotnavigation.dart';
import 'package:e_commerce_app/features/authentication/on_boarding_controllar/widget/onboarding_nextButton.dart';
import 'package:e_commerce_app/features/authentication/on_boarding_controllar/widget/onboarding_skip.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:e_commerce_app/utils/constants/image_string.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnbordController());
    return Scaffold(
        body: Stack(
      children: [
        ///horizontal scrollable pages
        PageView(
          controller: controller.pageController,
          children: const [
            OnBoardingScreen2(
                image: TImages.onboardingimage1,
                title: TText.onboardingtitle1,
                subtitle: TText.onboardingsubtitle1),
            OnBoardingScreen2(
                image: TImages.onboardingimage2,
                title: TText.onboardingtitle2,
                subtitle: TText.onboardingsubtitle2),
            OnBoardingScreen2(
                image: TImages.onboardingimage3,
                title: TText.onboardingtitle3,
                subtitle: TText.onboardingsubtitle3)
          ],
        ),
        //const OnBoardingScreen
        const Skip(),
        // Dot navigation
        const Onbordindotnavigation(),
        // Next button
        const Onbordingnextbutton(),
      ],
    ));
  }
}

class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Lottie.asset(
            image,
            width: THelperFucntion.screenWidth(BuildContext, context) * 0.8,
            height: THelperFucntion.screenHeight(BuildContext, context) * 0.6,
          ),

          // Image.asset(image),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),

          const SizedBox(
            height: TSizes.defaultSpaceBtwItem,
          ),

          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),

          //skip button

          //dot navigation smooth indicator

          //circular button
        ],
      ),
    );
  }
}
