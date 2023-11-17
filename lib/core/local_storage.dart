import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';


final localStorageProvider = Provider<LocalStorage>((ref) {
  return LocalStorage();
});
class LocalStorage {
  Future<void> saveStringToLocalStorage(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  Future<String> getStringFromLocalStorage(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? '';
  }
}

class LocalStroageKeys {
  static const String orderStatus = "OrderStatus";
}
