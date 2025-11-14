import 'package:injectable/injectable.dart';
import 'package:storetest/domain/repository/settings_repository.dart';
import 'package:storetest/features/settings/cubit/theme_cubit.dart';

@injectable
class SetAppThemeModeUseCase {
  final SettingsRepository _repository;

  SetAppThemeModeUseCase(this._repository);

  Future<void> call(AppThemeMode mode) {
    return _repository.setAppThemeMode(mode);
  }
}
