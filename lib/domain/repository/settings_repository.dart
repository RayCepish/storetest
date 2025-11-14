import 'package:storetest/features/settings/cubit/theme_cubit.dart';

abstract class SettingsRepository {
  Future<AppThemeMode> getAppThemeMode();

  Future<void> setAppThemeMode(AppThemeMode mode);
}
