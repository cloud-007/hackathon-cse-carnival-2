import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_item_response.freezed.dart';
part 'chat_item_response.g.dart';

@freezed
class ChatItemResponse with _$ChatItemResponse {
  const factory ChatItemResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'sender') required int sender,
    @JsonKey(name: 'receiver') required int receiver,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'is_mine') required bool isMine,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'modified_at') required DateTime modifiedAt,
  }) = _ChatItemResponse;

  factory ChatItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatItemResponseFromJson(json);
}
