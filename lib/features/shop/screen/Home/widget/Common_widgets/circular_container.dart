import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  // Default values in the constructor
  CircularContainer({
    super.key,
    this.width,
    this.height,
    this.child,
    this.padding,
    this.margin,
    this.showBorder = false,
    this.radius = TSizes.cardRadiusLg,
    this.borderColor = TColors.primaryBackgorundColor,
    this.backgroundColor = TColors.textWhite,
    required bool showborder,
  });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final bool showBorder;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        border: showBorder
            ? Border.all(color: borderColor, width: 2.0)
            : null, // Border will only show if `showBorder` is true
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
