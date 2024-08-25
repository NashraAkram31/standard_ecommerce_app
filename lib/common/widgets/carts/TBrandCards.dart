import 'package:e_commerce_app/common/widgets/images/TCicularimages.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/Common_widgets/Tbrandtitlewithverifiedicon.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/Common_widgets/circular_container.dart';
import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/enum.dart';
import 'package:e_commerce_app/utils/constants/image_string.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TBrandCards extends StatelessWidget {
  const TBrandCards({
    super.key,
    this.ontap,
    required this.showborder,
  });
  final bool showborder;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ontap,
        child: CircularContainer(
          padding: EdgeInsets.all(TSizes.sm),
          backgroundColor: Colors.transparent,
          showborder: showborder,
          borderColor: Colors.grey,

          //padding:EdgeInsets.all(TSizes.md) ,
          // backgroundColor: Colors.transparent,
          child: Row(
            children: [
              //icon
              Flexible(
                  child: TCicluarImage(
                image: TImages.clothiconimage,
                isnetworkimage: false,
                backgroundcolor: Colors.transparent,
                overlaycolor: THelperFucntion.isDarkMode(context)
                    ? TColors.white
                    : TColors.black,
              )),
              SizedBox(height: TSizes.defaultSpaceBtwSection / 2),

              /// Text
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TBrandTitleWithVerifiedIcon(
                    title: "Nike",
                    brandtextsizes: Textsizes.large,
                  ),
                  Text(
                    '256 Product',
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ))
            ],
          ),
        ));
  }
}
