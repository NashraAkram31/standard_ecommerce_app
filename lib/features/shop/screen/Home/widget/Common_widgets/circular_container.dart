import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CicularContainer extends StatelessWidget {
  // ye default values hen consturctor ki
  CicularContainer(
      {super.key,
      this.width,
      this.height,
      this.child,
      this.Padding,
      this.margin,
      this.showborder = false,
      this.radius = TSizes.cardRadiusLg,
      this.bordercolor = TColors.primaryBackgorundColor,
      this.BackgroundColor = TColors.textWhite});
  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final EdgeInsetsGeometry? Padding;
  final EdgeInsetsGeometry? margin;
  bool showborder = false;

  final Color bordercolor;
  final Color? BackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: Padding,
      decoration: BoxDecoration(
          border: showborder
              ? Border.all(color: bordercolor, width: 2.0)
              : null, // Border agar `showBorder` true hai, tabhi dikhayega

          //
          borderRadius: BorderRadius.circular(radius),
          color: BackgroundColor),
      child: child,
    );
  }
}
