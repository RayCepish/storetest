import 'package:flutter/material.dart';
import 'package:storetest/features/settings/cubit/theme_cubit.dart';

extension ThemeModeMapper on AppThemeMode {
  ThemeMode toThemeMode() {
    switch (this) {
      case AppThemeMode.light:
        return ThemeMode.light;
      case AppThemeMode.dark:
        return ThemeMode.dark;
      case AppThemeMode.system:
        return ThemeMode.system;
    }
  }
}
