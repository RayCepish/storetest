import 'package:flutter/material.dart';

class TAppBarTheme {
  TAppBarTheme._();

  static final light = AppBarTheme(
    backgroundColor: Colors.lightGreen[50],
    foregroundColor: Colors.black,
    elevation: 0,
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
    shadowColor: Colors.transparent,
    centerTitle: false,
    titleTextStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    iconTheme: const IconThemeData(color: Colors.black),
  );

  static final dark = AppBarTheme(
    backgroundColor: const Color(0xFF121212),
    foregroundColor: Colors.white,
    elevation: 0,
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
    shadowColor: Colors.transparent,
    centerTitle: false,
    titleTextStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    iconTheme: const IconThemeData(color: Colors.white),
  );
}
