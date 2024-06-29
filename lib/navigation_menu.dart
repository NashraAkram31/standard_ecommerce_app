import 'package:e_commerce_app/features/shop/screen/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controllar = Get.put(NavigationControllar());
    return Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: Obx(
          () => Container(
            height: 80, // Set the desired height here
            child: BottomNavigationBar(
              elevation: 0,
              currentIndex: controllar.selectedIndex.value,
              onTap: (index) => controllar.selectedIndex.value = index,

              type: BottomNavigationBarType.fixed, // Add this line
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.shop), label: "Store"),
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.heart), label: "Which List"),
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.user), label: "Profile"),
              ],
            ),
          ),
        ),
        body: Obx(
          () => controllar.Screen[controllar.selectedIndex.value],
        ));
  }
}

class NavigationControllar extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  List<Widget> Screen = [
    const HomeScreen(),
    Text("HEllow thid is 2"),
    Text("HEllow thid is 3"),
    Text("HEllow thid is 4")
  ];
}
