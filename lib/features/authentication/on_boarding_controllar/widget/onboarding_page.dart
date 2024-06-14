import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class OnBordingPage extends StatelessWidget {
  const OnBordingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              width: THelperFucntion.screenWidth(BuildContext, context) * 0.8,
              height: THelperFucntion.screenHeight(BuildContext, context) * 0.6,
              image: AssetImage(image)),
          Text(
            title,
            // TTextd.onBoardTile1,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TSizes.defaultSpaceBtwItem,
          ),
          Text(
            subTitle,
            // TTextd.onBoardTile1,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
