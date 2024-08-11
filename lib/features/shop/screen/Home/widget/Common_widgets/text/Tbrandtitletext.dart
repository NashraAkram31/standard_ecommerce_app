//import 'package:e_commerce_app/features/shop/screen/Home/widget/Common_widgets/text/textsizes.dart';
import 'package:e_commerce_app/utils/constants/enum.dart';
import 'package:flutter/material.dart';

class TBrandTitleText extends StatelessWidget {
  TBrandTitleText({
    super.key,
    required this.title,
    this.color,
    this.maxline = 1,
    this.brandtextSizes = Textsizes.small,
    this.textalign,
  });
  final Color? color;
  final String title;
  final int maxline;
  final TextAlign? textalign;
  final Textsizes brandtextSizes;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textalign,
        maxLines: maxline,
        overflow: TextOverflow.ellipsis,
        // check which  brand size is required and set that style
        style: brandtextSizes == Textsizes.small
            ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
            : brandtextSizes == Textsizes.medium
                ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                : brandtextSizes == Textsizes.large
                    ? Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(color: color)
                    : Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: color));
  }
}
