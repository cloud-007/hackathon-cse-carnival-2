import 'package:reachout/data/datasource/remote/api/account_api.dart';
import 'package:reachout/data/datasource/remote/model/server_auth_request.dart';
import 'package:reachout/data/datasource/remote/model/server_auth_response.dart';
import 'package:reachout/data/datasource/remote/model/user_response.dart';
import 'package:reachout/data/datasource/remote/util/api_client.dart';

class AccountApiImpl implements AccountApi {
  final ApiClient _client;

  static const googleSignInUrl = 'accounts/v1/google/login/';
  static const userInfoUrl = 'accounts/v1/user-info/';

  AccountApiImpl({required ApiClient client}) : _client = client;

  @override
  Future<ServerAuthResponse> googleSignIn(
    ServerAuthRequest requestBody,
  ) {
    final response = _client.post<JSONObject, ServerAuthResponse>(
      path: googleSignInUrl,
      data: requestBody.toJson(),
      converter: (json) => ServerAuthResponse.fromJson(json),
    );
    return response;
  }

  @override
  Future<UserResponse> getUserInfo() {
    return _client.get<JSONObject, UserResponse>(
      path: userInfoUrl,
      converter: (json) => UserResponse.fromJson(json),
    );
  }
}
