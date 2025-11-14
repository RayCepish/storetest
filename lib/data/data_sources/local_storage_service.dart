import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton()
class LocalStorageService {
  final SharedPreferences preferences;

  LocalStorageService(this.preferences);

  Future<void> saveStringList(String key, List<String> value) {
    return preferences.setStringList(key, value);
  }

  List<String> getStringList(String key) {
    return preferences.getStringList(key) ?? [];
  }
}
