import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key,
      this.LeadingOnPress,
      this.actions,
      this.showbackarrow = false,
      this.title,
      this.leadingicon});
  final Widget? title;
  final bool showbackarrow;
  final List<Widget>? actions;
  final VoidCallback? LeadingOnPress;
  final IconData? leadingicon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
          automaticallyImplyLeading: false,
          leading: showbackarrow
              ? IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Iconsax.arrow_left))
              : leadingicon != null
                  ? IconButton(
                      onPressed: () {
                        LeadingOnPress;
                      },
                      icon: Icon(leadingicon))
                  : null,
          title: title,
          actions: actions),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppbarHeight());
}
