import 'package:e_commerce_app/utils/themes/custom_theme/elevated_bottom_theme.dart';
import 'package:e_commerce_app/utils/themes/custom_theme/outline_button_theme.dart';
import 'package:e_commerce_app/utils/themes/custom_theme/textfield_theme.dart';
import 'package:flutter/material.dart';

import 'appbar_theme.dart';
import 'checkbox_theme.dart';
import 'chip_theme.dart';
import 'text_theme.dart';

class TAppTheme {
  // Make constructor private
  TAppTheme._();

  // LIGHT THEME
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.light, // Ensure brightness matches
    ),
    primaryColor: Colors.blue,
    useMaterial3: true,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.ligthElevatedButtonTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    chipTheme: TChiptheme.lightChipTheme,
    checkboxTheme: TCheckboxTheme.lightCheckTheme,
    outlinedButtonTheme: TOutlineButtonTheme.lightTOutlineButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  // DARK THEME
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.dark, // Ensure brightness matches
    ),
    primaryColor: Colors.blue,
    useMaterial3: true,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    chipTheme: TChiptheme.darkChipTheme,
    checkboxTheme: TCheckboxTheme.darkCheckTheme,
    outlinedButtonTheme: TOutlineButtonTheme.darkTOutlineButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
