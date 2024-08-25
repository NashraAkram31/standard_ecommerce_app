import 'package:e_commerce_app/features/shop/screen/Home/widget/Common_widgets/circular_container.dart';
//import 'package:e_commerce_app/features/shop/screen/Home/widget/custom_shapes/containers/circular_containers.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/custom_shapes/containers/curved_ages/TCurve_Edge_Widget.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/custom_shapes/containers/curved_ages/curved_ages.dart';
import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:flutter/material.dart';

class THeaderContainer extends StatelessWidget {
  const THeaderContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurveEdgeWidget(
        child: Container(
      color: TColors.primary,
      padding: const EdgeInsets.all(0),
      child: SizedBox(
        height: 350,
        child: Stack(
          children: [
            Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                  showborder: false,
                )),
            Positioned(
                top: 150,
                right: -300,
                child: CircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                  showborder: false,
                )),
            child
          ],
        ),
      ),
    ));
  }
}
