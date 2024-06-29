import 'package:e_commerce_app/features/shop/screen/Home/widget/custom_shapes/containers/circular_containers.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/custom_shapes/containers/curved_ages/curved_ages.dart';
import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
                clipper: MYClipper(),
                child: Container(
                  color: TColors.primary,
                  padding: const EdgeInsets.all(0),
                  child: SizedBox(
                    height: 400,
                    child: Stack(
                      children: [
                        Positioned(
                            top: -150,
                            right: -250,
                            child: CicularContainer(
                                BackgroundColor:
                                    TColors.textWhite.withOpacity(0.1))),
                        Positioned(
                            top: 150,
                            right: -300,
                            child: CicularContainer(
                                BackgroundColor:
                                    TColors.textWhite.withOpacity(0.1))),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
