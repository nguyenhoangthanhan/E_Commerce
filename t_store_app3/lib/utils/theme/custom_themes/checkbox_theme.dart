import 'package:flutter/material.dart';

/// Custom Class for Light & Dark Check Box Theme
class TCheckBoxTheme{
  TCheckBoxTheme._();

  /// Customizable Light CheckBox
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states){
      if (states.contains(MaterialState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states){
      if (states.contains(MaterialState.selected)){
        return Colors.blue;
      }else{
        return Colors.transparent;
      }
    }),
  );

  /// Customizable Dark CheckBox
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states){
      if (states.contains(MaterialState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states){
      if (states.contains(MaterialState.selected)){
        return Colors.blue;
      }else{
        return Colors.transparent;
      }
    }),
  );
}