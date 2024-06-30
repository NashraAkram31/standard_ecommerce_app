import 'package:e_commerce_app/features/shop/screen/Home/widget/custom_shapes/containers/curved_ages/curved_ages.dart';
import 'package:flutter/material.dart';

class TCurveEdgeWidget extends StatelessWidget {
  const TCurveEdgeWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MYClipper(),
      child: child,
    );
  }
}
