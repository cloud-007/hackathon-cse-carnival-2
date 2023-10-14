import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDataSource {
  final SharedPreferences _sharedPref;

  // region:: string constants
  static const _token = 'token';
  static const _id = 'id';
  static const _constants = 'constants';

  // endregion

  // region Account local data source

  LocalDataSource({required SharedPreferences sharedPref})
      : _sharedPref = sharedPref;

  String? getServerToken() => _sharedPref.getString(_token);

  Future<void> removeServerToken() async {
    await _sharedPref.remove(_token);
  }

  Future<void> setServerToken({required String token}) async {
    await _sharedPref.setString(_token, token);
  }

  Future<void> setAccountId({required String id}) async {
    await _sharedPref.setString(_id, id);
  }

  Future<void> removeAccountId() async {
    await _sharedPref.remove(_id);
  }

  String? getAccountId() => _sharedPref.getString(_id);

//   endregion

// region core local data source

  Future<String> getApkVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.buildNumber;
  }

  Future<String> getPackageName() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.packageName;
  }

  Future<String> fetchPrefData({required String key}) async {
    final String? value = _sharedPref.getString('$_constants.$key');
    return value ?? '';
  }
// endregion
}
