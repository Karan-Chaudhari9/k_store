import 'package:flutter/material.dart';
import 'package:k_store/utils/theme/custom_theme/appbar_theme.dart';
import 'package:k_store/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:k_store/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:k_store/utils/theme/custom_theme/chip_theme.dart';
import 'package:k_store/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:k_store/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:k_store/utils/theme/custom_theme/text_field_theme.dart';
import 'package:k_store/utils/theme/custom_theme/text_theme.dart';

class KAppTheme {
  KAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.purple,
    textTheme: KTextTheme.lightTextTheme,
    chipTheme: KChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: KAppBarTheme.lightAppBarTheme,
    checkboxTheme: KCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: KBottomSheetTheme.lightBottomSheetThemeData,
    elevatedButtonTheme: KElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: KOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: KTextFieldTheme.lightInputDecorationTheme
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.purple,
      textTheme: KTextTheme.darkTextTheme,
      chipTheme: KChipTheme.darkChipTheme,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: KAppBarTheme.darkAppBarTheme,
      checkboxTheme: KCheckBoxTheme.darkCheckBoxTheme,
      bottomSheetTheme: KBottomSheetTheme.darkBottomSheetThemeData,
      elevatedButtonTheme: KElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: KOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: KTextFieldTheme.darkInputDecorationTheme
  );
}