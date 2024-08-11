import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchContainer extends StatelessWidget {
  SearchContainer(
      {super.key,
      this.icon,
      this.showbackground = true,
      this.showboarder = true,
      this.padding =
          const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      required this.text});
  final String text;
  final IconData? icon;
  final bool showbackground, showboarder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);
    return Padding(
        padding: padding,
        child: Container(
          width: TDeviceUtils.getScreenWidth(),
          padding: EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
              color: showbackground
                  ? dark
                      ? TColors.dark
                      : TColors.white
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
              border: showboarder ? Border.all(color: TColors.grey) : null),
          child: Row(
            children: [
              Icon(
                Iconsax.search_normal,
                color: TColors.darkGrey,
              ),
              const SizedBox(
                width: TSizes.defaultSpaceBtwItem,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ));
  }
}
