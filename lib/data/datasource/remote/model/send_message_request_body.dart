import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_message_request_body.freezed.dart';
part 'send_message_request_body.g.dart';

@freezed
class SendMessageRequestBody with _$SendMessageRequestBody {
  @JsonSerializable(includeIfNull: false)
  const factory SendMessageRequestBody({
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'receiver') required int receiverId,
  }) = _SendMessageRequestBody;

  factory SendMessageRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SendMessageRequestBodyFromJson(json);
}
