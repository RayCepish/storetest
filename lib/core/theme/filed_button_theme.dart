import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TFilledButtonTheme {
  TFilledButtonTheme._();

  static final light = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: Color(0xFF0A6847),
      foregroundColor: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
    ),
  );

  static final dark = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: Colors.yellow.shade600,
      foregroundColor: Colors.black,
      padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
    ),
  );
}
