import 'package:reachout/data/datasource/remote/model/server_auth_response.dart';
import 'package:reachout/domain/model/account/user.dart';

abstract class AccountRemoteDataSource {
  Future<ServerAuthResponse> googleSignIn({
    required String accessToken,
    String? deviceId,
    String? firebasePushToken,
  });

  Future<User> getUserInfo();
}
