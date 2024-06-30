import 'package:e_commerce_app/common/widgets/App_bar/app_bar.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/THome_bar.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/custom_shapes/containers/circular_containers.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/custom_shapes/containers/curved_ages/TPrimary_header_container.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/custom_shapes/containers/curved_ages/curved_ages.dart';
import 'package:e_commerce_app/utils/constants/color.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            THeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [THomeAppBar()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
