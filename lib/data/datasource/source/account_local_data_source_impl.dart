import 'package:reachout/data/datasource/source/account_local_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountLocalDataSourceImpl implements AccountLocalDataSource {
  final SharedPreferences _sharedPref;

  static const _token = 'token';
  static const _id = 'id';

  AccountLocalDataSourceImpl({required SharedPreferences sharedPref})
      : _sharedPref = sharedPref;

  @override
  String? getServerToken() => _sharedPref.getString(_token);

  @override
  Future<void> removeServerToken() async {
    await _sharedPref.remove(_token);
  }

  @override
  Future<void> setServerToken({required String token}) async {
    await _sharedPref.setString(_token, token);
  }

  @override
  Future<void> setAccountId({required String id}) async {
    await _sharedPref.setString(_id, id);
  }

  @override
  Future<void> removeAccountId() async {
    await _sharedPref.remove(_id);
  }

  @override
  String? getAccountId() => _sharedPref.getString(_id);
}
