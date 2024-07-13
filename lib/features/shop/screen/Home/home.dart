import 'dart:js';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/widgets/App_bar/app_bar.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/Seacrh_Container.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/THome_bar.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/custom_shapes/containers/circular_containers.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/custom_shapes/containers/curved_ages/TPrimary_header_container.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/custom_shapes/containers/curved_ages/TSection_Text_heading.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/custom_shapes/containers/curved_ages/circularimage.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/custom_shapes/containers/curved_ages/curved_ages.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/custom_shapes/containers/whiteScreenRoundedImage.dart';
import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/image_string.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        THeaderContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //App bar
              THomeAppBar(),
              const SizedBox(height: TSizes.defaultSpaceBtwSection),
              // Search Bar
              SearchContainer(
                text: "Seacrh in Store",
              ),
              const SizedBox(height: TSizes.defaultSpaceBtwSection),
              // horizontal list view builder

              Padding(
                padding: EdgeInsets.only(
                  left: TSizes.defaultSpace,
                  // horizontal list view builder
                ),
                child: Column(
                  children: [
                    ///HEADING
                    TSectionHeading(
                      title: 'Popular Categories',
                      textColors: TColors.white,
                    ),
                    const SizedBox(height: TSizes.defaultSpaceBtwItem),

                    /// CATEGORIES
                    SizedBox(
                        height: 80,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, int index) {
                              return VerticalImageText(
                                image: TImages.shoeicon,
                                text: 'Shoes Category',
                                onTap: () {},
                              );
                            }))
                  ],
                ),
              )
            ],
          ),
        ),
        // yaha ab body part start hua h ab wo krenge
        Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                CarouselSlider(
                  items: [
                    WhitepaceRoundedImage(
                      imageurl: TImages.banner1,
                    ),
                    WhitepaceRoundedImage(
                      imageurl: TImages.banner3,
                    )
                  ],
                  options: CarouselOptions(viewportFraction: 1),
                ),
                SizedBox(
                  height: TSizes.defaultSpaceBtwItem,
                ),
                //CicularContainer(BackgroundColor: ,)
              ],
            ))
      ])),
    );
  }
}
