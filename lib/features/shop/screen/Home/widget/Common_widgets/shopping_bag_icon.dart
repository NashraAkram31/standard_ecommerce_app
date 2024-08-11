import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Shoppingbagicon extends StatelessWidget {
  final VoidCallback? callback;

  Shoppingbagicon({
    super.key,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: callback,
          icon: Icon(
            Iconsax.shopping_bag,
            color: dark ? TColors.white : TColors.black,
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
                selectionColor: dark ? TColors.white : TColors.black,
                textScaleFactor: 0.8,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
