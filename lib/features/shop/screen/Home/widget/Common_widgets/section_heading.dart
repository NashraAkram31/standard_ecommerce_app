import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  TSectionHeading({
    super.key,
    this.ShowActionButton = false,
    this.buttontitle = "ViewAll",
    this.onpressed,
    this.textColors,
    required this.title,
  });
  final bool ShowActionButton;
  final String title, buttontitle;
  final Color? textColors;

  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        title,
        style:
            Theme.of(context).textTheme.headlineSmall!.apply(color: textColors),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      if (ShowActionButton)
        TextButton(
          onPressed: onpressed,
          child: Text(buttontitle),
        )
    ]);
  }
}
