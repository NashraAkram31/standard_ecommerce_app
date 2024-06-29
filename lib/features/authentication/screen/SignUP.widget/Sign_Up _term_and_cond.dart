import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TermCondition extends StatelessWidget {
  const TermCondition({super.key});

  @override
  Widget build(BuildContext context) {
    final isdark = THelperFucntion.isDarkMode(context);
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) {}),
        const SizedBox(
          width: TSizes.defaultSpaceBtwItem,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${TText.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${TText.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: isdark ? TColors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: isdark ? TColors.white : TColors.primary,
                  )),
          // yaha isme mujhe and text lagana h lazmi
          TextSpan(
              text: '${TText.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${TText.termsOfUse} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: isdark ? TColors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: isdark ? TColors.white : TColors.primary,
                  )),
        ]))
      ],
    );
  }
}
