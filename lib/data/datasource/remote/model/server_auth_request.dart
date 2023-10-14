import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_auth_request.freezed.dart';
part 'server_auth_request.g.dart';

@freezed
class ServerAuthRequest with _$ServerAuthRequest {
  @JsonSerializable(includeIfNull: false)
  const factory ServerAuthRequest({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'device_id') String? deviceId,
    @JsonKey(name: 'firebase_push_token') String? firebasePushToken,
  }) = _ServerAuthRequest;

  factory ServerAuthRequest.fromJson(Map<String, dynamic> json) =>
      _$ServerAuthRequestFromJson(json);
}
