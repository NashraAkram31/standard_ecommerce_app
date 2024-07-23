import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:flutter/widgets.dart';

class TBoxVeticalShadow {
  static final veticalboxshaddow = BoxShadow(
      color: TColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
  static final Horizontalboxshaddow = BoxShadow(
      color: TColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
