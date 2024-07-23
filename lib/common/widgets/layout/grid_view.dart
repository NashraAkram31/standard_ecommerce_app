import 'package:e_commerce_app/common/widgets/carts/product_cart/product_card_vert.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/widgets.dart';

class TGridview extends StatelessWidget {
  const TGridview(
      {super.key,
      required this.itemcount,
      required this.itembuilder,
      this.mainAxisExtent = 288});
  final int itemcount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itembuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: itemcount,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: TSizes.gridViewSpacing,
            crossAxisSpacing: TSizes.gridViewSpacing,
            mainAxisExtent: mainAxisExtent),
        itemBuilder: itembuilder);
  }
}
