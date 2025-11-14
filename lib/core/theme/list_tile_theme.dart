import 'package:flutter/material.dart';
import 'package:storetest/core/theme/text_theme.dart';

class TListTileTheme {
  TListTileTheme._();

  static final light = ListTileThemeData(
    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
    iconColor: Color(0xFF0A6847),
    textColor: Colors.black87,
    titleTextStyle: TTextTheme.lightTextTheme.bodyMedium!.copyWith(
      fontWeight: FontWeight.w600,
    ),
    subtitleTextStyle: TTextTheme.lightTextTheme.labelSmall,
    leadingAndTrailingTextStyle: TTextTheme.lightTextTheme.labelSmall,
  );

  static final dark = ListTileThemeData(
    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
    iconColor: Colors.yellowAccent,
    textColor: Colors.white,
    titleTextStyle: TTextTheme.darkTextTheme.bodyMedium!.copyWith(
      fontWeight: FontWeight.w600,
    ),
    subtitleTextStyle: TTextTheme.darkTextTheme.labelSmall,
    leadingAndTrailingTextStyle: TTextTheme.darkTextTheme.labelSmall,
  );
}
