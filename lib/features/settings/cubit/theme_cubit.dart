import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AppThemeMode { light, dark, system }

@injectable
class ThemeCubit extends Cubit<AppThemeMode> {
  final SharedPreferences preferences;

  ThemeCubit(this.preferences) : super(AppThemeMode.system) {
    _load();
  }

  void _load() {
    final saved = preferences.getString('theme');
    switch (saved) {
      case 'light':
        emit(AppThemeMode.light);
        break;
      case 'dark':
        emit(AppThemeMode.dark);
        break;
      default:
        emit(AppThemeMode.system);
    }
  }

  void setTheme(AppThemeMode mode) {
    emit(mode);
    preferences.setString('theme', mode.name);
  }
}
