import 'package:reachout/data/datasource/remote/model/server_auth_request.dart';
import 'package:reachout/data/datasource/remote/model/server_auth_response.dart';
import 'package:reachout/data/datasource/remote/model/user_response.dart';

abstract class AccountApi {
  Future<ServerAuthResponse> googleSignIn(
    ServerAuthRequest requestBody,
  );

  Future<UserResponse> getUserInfo();
}
