import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/image_string.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VerticalImageText extends StatelessWidget {
  VerticalImageText(
      {super.key,
      required this.image,
      required this.text,
      required this.onTap,
      this.backgroundcolor = TColors.white,
      this.textcolor = TColors.white});
  final String image;
  final String text;
  final Color textcolor;
  final Color backgroundcolor;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);
    return GestureDetector(
        onTap: onTap,
        child: Padding(
            padding: EdgeInsets.only(right: TSizes.defaultSpaceBtwItem),
            child: Column(
              children: [
                Container(
                  width: 56,
                  height: 56,
                  padding: EdgeInsets.all(TSizes.sm),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: backgroundcolor ??
                          (dark ? TColors.black : TColors.white)),
                  child: Center(
                      child: Image.asset(
                    image,
                    color: dark ? TColors.light : null, //TImages.shoeicon
                    fit: BoxFit.cover,
                  )),
                ),

                // Text
                SizedBox(
                    width: 55,
                    child: Text(
                      text,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: textcolor),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ))
              ],
            )));
  }
}
