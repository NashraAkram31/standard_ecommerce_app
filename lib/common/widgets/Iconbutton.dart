import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';

class TIconButton extends StatelessWidget {
  TIconButton(
      {super.key,
      required this.icon,
      this.borderradius = 100,
      this.color,
      this.height,
      this.onpressed,
      this.size = TSizes.lg,
      this.backgroundcolor,
      this.width});
  IconData icon;

  final Color? color;
  double borderradius;
  final double? width, height, size;
  final VoidCallback? onpressed;
  final Color? backgroundcolor;

  @override
  Widget build(BuildContext context) {
    bool dark = THelperFucntion.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderradius),
        color: backgroundcolor != null
            ? backgroundcolor
            : THelperFucntion.isDarkMode(context)
                ? TColors.black.withOpacity(0.9)
                : TColors.white.withOpacity(0.9),
      ),
      child: IconButton(
          onPressed: onpressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
