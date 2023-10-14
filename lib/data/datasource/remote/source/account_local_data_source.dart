abstract class AccountLocalDataSource {
  String? getServerToken();

  Future<void> setServerToken({required String token});

  Future<void> removeServerToken();

  Future<void> setAccountId({required String id});

  Future<void> removeAccountId();

  String? getAccountId();
}
