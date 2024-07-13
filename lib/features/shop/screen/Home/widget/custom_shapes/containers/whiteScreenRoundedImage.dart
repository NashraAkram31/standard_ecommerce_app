import 'package:e_commerce_app/utils/constants/image_string.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/constants/color.dart';

class WhitepaceRoundedImage extends StatelessWidget {
  const WhitepaceRoundedImage(
      {super.key,
      this.width,
      this.height,
      this.IsNetworkImage = false,
      this.applyimageradius = true,
      this.borderradius = TSizes.md,
      this.border,
      this.backgrundcolor = TColors.light,
      this.fit = BoxFit.contain,
      this.onPressed,
      required this.imageurl,
      this.padding});
  final double? width, height;
  final String imageurl;
  final bool applyimageradius;
  final BoxBorder? border;
  final Color backgrundcolor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool IsNetworkImage;
  final VoidCallback? onPressed;
  final double borderradius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                border: border,
                borderRadius: BorderRadius.circular(borderradius)),
            child: ClipRRect(
                borderRadius: applyimageradius
                    ? BorderRadius.circular(TSizes.md)
                    : BorderRadius.zero,
                child: Image(
                  image: IsNetworkImage
                      ? NetworkImage(imageurl)
                      : AssetImage(imageurl) as ImageProvider,
                  fit: fit,
                ))));
  }
}
