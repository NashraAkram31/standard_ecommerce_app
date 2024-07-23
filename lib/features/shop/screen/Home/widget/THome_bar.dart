import 'package:e_commerce_app/common/widgets/App_bar/app_bar.dart';
import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        children: [
          Text(
            TText.homeAppBartitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
            selectionColor: TColors.grey,
          ),
          Text(
            TText.homeAppBarSubtitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: TColors.white),
          ),
        ],
      ),
      actions: [
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.shopping_bag,
                color: TColors.white,
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: TColors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Text(
                    "2",
                    style: Theme.of(context).textTheme.bodySmall,
                    selectionColor: TColors.white,
                    textScaleFactor: 0.8,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
