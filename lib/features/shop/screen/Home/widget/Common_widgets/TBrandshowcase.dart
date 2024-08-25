import 'package:e_commerce_app/common/widgets/carts/TBrandCards.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/Common_widgets/circular_container.dart';
import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/image_string.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return CircularContainer(
      borderColor: TColors.darkGrey,
      //backgroundColor: Colors.transparent,
      //  padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.xs),

      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),

      showborder: true,

      child: Column(
        children: [
          /// Brand Top & Products Count
          TBrandCards(
            showborder: false,
          ),

          /// Brand Top & Product Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: CircularContainer(
      height: 100,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(right: TSizes.sm),
      showBorder: true,
      borderColor: Colors.grey,
      // backgroundColor: THelperFucntion.isDarkMode(context) ? TColors.darkerGrey : TColors.light,

      backgroundColor: THelperFucntion.isDarkMode(context)
          ? TColors.darkerGrey
          : TColors.white,
      showborder: true,
      // borderColor:Colors.grey,
      child: const Image(
          fit: BoxFit.contain, image: AssetImage(TImages.shirtimage)),
    ),
  );
}
