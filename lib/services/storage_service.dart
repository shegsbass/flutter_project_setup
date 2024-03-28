import 'package:flutter_secure_storage/flutter_secure_storage.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  // late final SharedPreferences _prefs;

  //For encrypted SharedPreference
  // AndroidOptions _getAndroidOptions() => const AndroidOptions(
  //   encryptedSharedPreferences: true,
  // );

  late final FlutterSecureStorage _storage;

  Future<StorageService> init() async {
    _storage = const FlutterSecureStorage();
    return this;
  }

  Future<void> write(String key, String value) async {
    _storage.write(key: key, value: value);
  }

  Future<void> clear(String key) async {
    _storage.delete(key: key);
  }

  Future<String?> readStorage(String key) async {
    return _storage.read(key: key);
  }

  // Future<bool> setString(String key, String value) async {
  //   return await _prefs.setString(key, value);
  // }
  //
  // bool getDeviceFirstOpen() {
  //   return _prefs.getBool(APP_FIRST_OPEN) ?? false;
  // }
  //
  // bool getIsLoggedIn() {
  //   return _prefs.getString(USER_TOKEN_KEY) == null ? false : true;
  // }
}
