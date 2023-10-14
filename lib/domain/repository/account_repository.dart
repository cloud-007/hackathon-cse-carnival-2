import 'package:reachout/domain/model/account/user.dart';

abstract class AccountRepository {
  Future<void> googleSignIn();

  String? getSessionToken();

  Future<User> getUserInfo();

  String? getAccountId();

  Future<void> signOut();
}
