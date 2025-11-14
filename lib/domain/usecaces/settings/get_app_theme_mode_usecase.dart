import 'package:injectable/injectable.dart';
import 'package:storetest/domain/repository/settings_repository.dart';
import 'package:storetest/features/settings/cubit/theme_cubit.dart';

@injectable
class GetAppThemeModeUseCase {
  final SettingsRepository _repository;

  GetAppThemeModeUseCase(this._repository);

  Future<AppThemeMode> call() {
    return _repository.getAppThemeMode();
  }
}
