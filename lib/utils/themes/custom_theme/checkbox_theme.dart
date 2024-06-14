import 'package:flutter/material.dart';

//Custom class for Light & dark Text themes

class TCheckboxTheme {
  TCheckboxTheme._();

  //FOR LIGHT THEME
  static CheckboxThemeData lightCheckTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith((states) {
        //if checkbox selected(check color)
        if (states.contains(MaterialState.selected)) {
          return Colors.white;
        } else {
          return Colors.black;
        }
      }),
      //whole checkbox background color
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.blue;
        } else {
          return Colors.transparent;
        }
      }));

  //FOR DARK THEME
  static CheckboxThemeData darkCheckTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith((states) {
        //if checkbox selected(check color)
        if (states.contains(MaterialState.selected)) {
          return Colors.white;
        } else {
          return Colors.black;
        }
      }),
      //whole checkbox background color
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.blue;
        } else {
          return Colors.transparent;
        }
      }));
}
