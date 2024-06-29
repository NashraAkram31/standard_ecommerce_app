import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:flutter/material.dart';

class CicularContainer extends StatelessWidget {
  // ye default values hen consturctor ki
  const CicularContainer(
      {super.key,
      this.width = 400,
      this.height = 400,
      this.Padding = 0,
      this.radius = 400,
      this.BackgroundColor = TColors.textWhite});
  final double? width;
  final double? height;
  final double? radius;
  final double? Padding;
  final Color? BackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(Padding!),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius!), color: BackgroundColor),
    );
  }
}
