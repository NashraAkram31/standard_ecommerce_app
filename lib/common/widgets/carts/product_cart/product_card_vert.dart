import 'package:e_commerce_app/common/styles/box_shadow.dart';
import 'package:e_commerce_app/common/widgets/Iconbutton.dart';
import 'package:e_commerce_app/common/widgets/text/product_title_text.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/Common_widgets/Tbrandtitlewithverifiedicon.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/Common_widgets/circular_container.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/Common_widgets/white_screen_rounded_image.dart';
//import 'package:e_commerce_app/features/shop/screen/Home/widget/custom_shapes/containers/circular_containers.dart';
//import 'package:e_commerce_app/features/shop/screen/Home/widget/custom_shapes/containers/whiteScreenRoundedImage.dart';
import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/image_string.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class TProductVerticalCard extends StatelessWidget {
  const TProductVerticalCard({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = THelperFucntion.isDarkMode(context);
    return GestureDetector(
        onTap: () {},
        child: Container(
            width: 180,
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              boxShadow: [TBoxVeticalShadow.veticalboxshaddow],
              color: dark ? TColors.darkerGrey : TColors.white,
            ),
            child: Column(
              children: [
                //thumbnail,Whistleist button,doscount tag
                CircularContainer(
                  height: 180,
                  padding: EdgeInsets.all(TSizes.sm),
                  backgroundColor: dark ? TColors.dark : TColors.lightGrey,
                  showborder: false,
                  child: Stack(
                    children: [
                      /// Thumbnail , image
                      WhitepaceRoundedImage(
                        imageurl: TImages.shoesproduct1,
                        applyimageradius: true,
                      ),
                      SizedBox(
                        height: TSizes.defaultSpaceBtwItem / 2,
                      ),
                      // Sales Tag
                      Positioned(
                          top: 12,
                          child: CircularContainer(
                              radius: TSizes.sm,
                              backgroundColor:
                                  TColors.secondary.withOpacity(0.8),
                              padding: EdgeInsets.symmetric(
                                  horizontal: TSizes.sm, vertical: TSizes.xs),
                              showborder: false,
                              child: Text(
                                "25%",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .apply(color: TColors.black),
                              ))),

                      ///favourtie icon button
                      Positioned(
                          top: 0,
                          right: 0,
                          child: TIconButton(
                            icon: Iconsax.heart5,
                            color: Colors.red,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: TSizes.defaultSpaceBtwItem / 2,
                ),
                //Details
                Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleText(
                        textAlign: TextAlign.left,
                        smallsize: true,
                      ),
                      SizedBox(
                        height: TSizes.defaultSpaceBtwItem / 2,
                      ),
                      TBrandTitleWithVerifiedIcon(title: "Nike")
                    ],
                  ),
                ),
                Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //price
                    Padding(
                        padding: EdgeInsets.only(left: TSizes.sm),
                        child: Text(
                          '\$35.5',
                          style: Theme.of(context).textTheme.headlineMedium,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )),
                    Container(
                      decoration: const BoxDecoration(
                          color: TColors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(TSizes.productImageRadius))),
                      child: const SizedBox(
                        width: TSizes.iconLg * 1.2,
                        height: TSizes.iconLg * 1.2,
                        child: Center(
                            child: Icon(Iconsax.add, color: TColors.white)),
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}
