import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesRepository {
  static SharedPreferences? prefs;

  init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static putInteger(String key, int value) {
    if (prefs != null) prefs!.setInt(key, value);
  }

  static putDouble(String key, double value) {
    if (prefs != null) prefs!.setDouble(key, value);
  }

  static double getDouble(String key) {
    return prefs == null ? 0 : prefs!.getDouble(key) ?? 0;
  }
  static int getInteger(String key) {
    return prefs == null ? 0 : prefs!.getInt(key) ?? 0;
  }

  static putString(String key, String value) {
    if (prefs != null) prefs!.setString(key, value);
  }

  static String getString(String key,String defValue) {
    return prefs == null ? defValue : prefs!.getString(key) ?? defValue;
  }

  static putBool(String key, bool value) {
    if (prefs != null) prefs!.setBool(key, value);
  }

  static bool getBool(String key) {
    return prefs == null ? false : prefs!.getBool(key) ?? false;
  }

  static void clearAll() {
    prefs!.clear();
  }
}
