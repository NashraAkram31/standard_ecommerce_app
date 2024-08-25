import 'package:e_commerce_app/common/widgets/App_bar/app_bar.dart';
import 'package:e_commerce_app/common/widgets/carts/product_cart/product_card_vert.dart';
import 'package:e_commerce_app/common/widgets/layout/grid_view.dart';
import 'package:e_commerce_app/features/shop/screen/Home/home.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/Common_widgets/TCircularicon.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/Common_widgets/circular_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          "WishList",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(icon: Icons.add, onPressed: () => Get.to(HomeScreen()))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          TGridview(
              itemcount: 6, itembuilder: (_, index) => TProductVerticalCard())
        ],
      )),
    );
  }
}
