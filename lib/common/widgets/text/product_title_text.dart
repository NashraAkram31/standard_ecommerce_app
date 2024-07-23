import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  TitleText(
      {super.key,
      this.Title = "Green Nike air shoes",
      this.maximumlines = 2,
      this.smallsize = true,
      this.textAlign});
  final TextAlign? textAlign;
  final int maximumlines;
  final String Title;
  bool smallsize = false;

  @override
  Widget build(BuildContext context) {
    return Text(
      Title,
      style: smallsize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      maxLines: maximumlines,
    );
  }
}
