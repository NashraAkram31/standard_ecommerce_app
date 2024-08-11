import 'package:e_commerce_app/common/widgets/App_bar/app_bar.dart';
import 'package:e_commerce_app/common/widgets/images/TCicularimages.dart';
import 'package:e_commerce_app/common/widgets/layout/grid_view.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/Common_widgets/Tbrandtitlewithverifiedicon.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/Common_widgets/circular_container.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/Common_widgets/section_heading.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/Common_widgets/shopping_bag_icon.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/Seacrh_Container.dart';
import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/enum.dart';
import 'package:e_commerce_app/utils/constants/image_string.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Store"),
        actions: [
          Shoppingbagicon(
            callback: () {},
          )
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxidScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFucntion.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(height: TSizes.defaultSpaceBtwItem),
                      // search bar
                      SearchContainer(
                        text: 'Seach in store',
                        showboarder: true,
                        showbackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(height: TSizes.defaultSpaceBtwSection),

                      // Features brand

                      TSectionHeading(
                        title: "Features Brands ",
                        ShowActionButton: true,
                        onpressed: () {},
                      ),
                      SizedBox(height: TSizes.defaultSpaceBtwSection / 1.5),
                      TGridview(
                        itemcount: 4,
                        mainAxisExtent: 80,
                        itembuilder: (_, index) {
                          return GestureDetector(
                              onTap: () {},
                              child: CicularContainer(
                                Padding: EdgeInsets.all(TSizes.sm),
                                BackgroundColor: Colors.transparent,
                                showborder: true,
                                child: Row(
                                  children: [
                                    //icon
                                    Flexible(
                                        child: TCicluarImage(
                                      image: TImages.clothiconimage,
                                      isnetworkimage: false,
                                      backgroundcolor: Colors.transparent,
                                      overlaycolor:
                                          THelperFucntion.isDarkMode(context)
                                              ? TColors.white
                                              : TColors.black,
                                    )),
                                    SizedBox(
                                        height:
                                            TSizes.defaultSpaceBtwSection / 2),

                                    /// Text
                                    Expanded(
                                        child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TBrandTitleWithVerifiedIcon(
                                          title: "Nike",
                                          brandtextsizes: Textsizes.large,
                                        ),
                                        Text(
                                          '256 Product',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        )
                                      ],
                                    ))
                                  ],
                                ),
                              ));
                        },
                      )
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}