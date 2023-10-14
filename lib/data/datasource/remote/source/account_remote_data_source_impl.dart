import 'package:reachout/data/datasource/remote/api/account_api.dart';
import 'package:reachout/data/datasource/remote/model/server_auth_request.dart';
import 'package:reachout/data/datasource/remote/model/server_auth_response.dart';
import 'package:reachout/data/mapper/account_mapper.dart';
import 'package:reachout/data/datasource/remote/source/account_remote_data_source.dart';
import 'package:reachout/domain/model/account/user.dart';

class AccountRemoteDataSourceImpl implements AccountRemoteDataSource {
  final AccountApi _accountApi;

  AccountRemoteDataSourceImpl({required AccountApi accountApi})
      : _accountApi = accountApi;

  @override
  Future<ServerAuthResponse> googleSignIn({
    required String accessToken,
    String? deviceId,
    String? firebasePushToken,
  }) async {
    final response = await _accountApi.googleSignIn(
      ServerAuthRequest(
        accessToken: accessToken,
        deviceId: deviceId,
        firebasePushToken: firebasePushToken,
      ),
    );

    return response;
  }

  @override
  Future<User> getUserInfo() async {
    final response = await _accountApi.getUserInfo();
    return response.toUser();
  }
}
