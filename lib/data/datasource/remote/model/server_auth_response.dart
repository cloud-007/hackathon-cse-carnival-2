import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reachout/data/datasource/remote/model/user_response.dart';

part 'server_auth_response.freezed.dart';
part 'server_auth_response.g.dart';

@freezed
class ServerAuthResponse with _$ServerAuthResponse {
  const factory ServerAuthResponse({
    @JsonKey(name: 'token') required String token,
    @JsonKey(name: 'created') required bool created,
    @JsonKey(name: 'user') required UserResponse userResponse,
  }) = _ServerAuthResponse;

  factory ServerAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$ServerAuthResponseFromJson(json);
}
