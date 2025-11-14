import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  static final light = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: BorderSide(color: Color(0xFF0A6847), width: 1.5.w),
      foregroundColor: const Color(0xFF0A6847),
      padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
      textStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
    ),
  );

  static final dark = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: BorderSide(color: Colors.yellow.shade600, width: 1.5.w),
      foregroundColor: Colors.yellow.shade600,
      padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
      textStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
    ),
  );
}
