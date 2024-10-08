import 'package:e_commerce_app/features/authentication/screen/SignUP.widget/sign_up.dart';
import 'package:e_commerce_app/features/authentication/screen/onboarding.dart';
import 'package:e_commerce_app/features/shop/screen/Home/home.dart';
import 'package:e_commerce_app/features/shop/screen/Home/widget/Common_widgets/shopping_bag_icon.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utils/themes/custom_theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //replace Material app with Get Material app
    // ye Desktop App h
    return GetMaterialApp(
      title: 'Ecommerce App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: CustomNavigationBar(),
      //Shoppingbagicon(callback: () {}),
    );
  }
}
