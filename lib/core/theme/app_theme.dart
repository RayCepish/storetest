import 'package:flutter/material.dart';
import 'package:storetest/core/theme/appbar_theme.dart';
import 'package:storetest/core/theme/filed_button_theme.dart';
import 'package:storetest/core/theme/input_decoration_theme.dart';
import 'package:storetest/core/theme/list_tile_theme.dart';
import 'package:storetest/core/theme/outlined_button_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    colorScheme: const ColorScheme.light(
      primary: Color(0xFF0A6847),
      secondary: Colors.lightGreen,
      surface: Colors.white,
      onSurface: Colors.black,
    ),

    iconTheme: const IconThemeData(color: Color(0xFF0A6847)),

    inputDecorationTheme: TInputDecorationTheme.light,
    outlinedButtonTheme: TOutlinedButtonTheme.light,
    filledButtonTheme: TFilledButtonTheme.light,
    appBarTheme: TAppBarTheme.light,
    listTileTheme: TListTileTheme.light,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    colorScheme: ColorScheme.dark(
      primary: Colors.yellow.shade600,
      secondary: Colors.orange.shade600,
      surface: const Color(0xFF1C1C1C),
      onSurface: Colors.white,
    ),

    iconTheme: IconThemeData(color: Colors.yellow.shade600),

    inputDecorationTheme: TInputDecorationTheme.dark,
    outlinedButtonTheme: TOutlinedButtonTheme.dark,
    filledButtonTheme: TFilledButtonTheme.dark,
    appBarTheme: TAppBarTheme.dark,
    listTileTheme: TListTileTheme.dark,
  );
}
