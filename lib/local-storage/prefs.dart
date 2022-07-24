import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {
  static SharedPreferences? _sharedPreferences;

  static Future<void> initPrefs() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setValue({required String key, required String val}) async {
    return await _sharedPreferences!.setString(key, val);
  }

  static String getValue({required String key}) {
    return _sharedPreferences!.getString(key) ?? "";
  }
}
