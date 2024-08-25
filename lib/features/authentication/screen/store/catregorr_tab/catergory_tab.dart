import 'package:e_commerce_app/common/widgets/carts/product_cart/product_card_vert.dart';
import 'package:e_commerce_app/common/widgets/layout/grid_view.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/Common_widgets/TBrandshowcase.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/Common_widgets/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_string.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          // brands
          TBrandShowcase(
            images: [TImages.produc1, TImages.clothiconimage, TImages.produc1],
          ),
          //products
          TSectionHeading(
            title: "You might like this product",
            ShowActionButton: true,
            onpressed: () {},
          ),
          SizedBox(
            height: TSizes.defaultSpaceBtwItem,
          ),
          TGridview(
              itemcount: 4, itembuilder: (_, index) => TProductVerticalCard())
        ],
      ),
    );
  }
}
