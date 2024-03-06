import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreference {
  final FlutterSecureStorage _secureStorage;

  final SharedPreferences _preferences;

  static const kAuthToken = 'auth_token';

  static const kIsLoggedIn = 'is_logged_in';

  AppPreference(this._secureStorage, this._preferences);

  Future<bool> saveBool(String key, bool value) =>
      _preferences.setBool(key, value);

  bool getBool(String key, {bool defaultVal = false}) =>
      _preferences.getBool(key) ?? defaultVal;

  Future<bool> saveInt(String key, int value) =>
      _preferences.setInt(key, value);

  int getInt(String key, {int defaultVal = 0}) =>
      _preferences.getInt(key) ?? defaultVal;

  Future<bool> saveDouble(String key, double value) =>
      _preferences.setDouble(key, value);

  double getDouble(String key, {double defaultVal = 0.0}) =>
      _preferences.getDouble(key) ?? defaultVal;

  Future<bool> saveString(String key, String value) =>
      _preferences.setString(key, value);

  String getString(String key, {String defaultVal = ''}) =>
      _preferences.getString(key) ?? defaultVal;

  Future<void> saveStringSecure(String key, String value) =>
      _secureStorage.write(key: key, value: value);

  Future<String?> getStringSecure(String key, {String defaultVal = ''}) =>
      _secureStorage.read(key: key);
}
