import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reachout/data/datasource/remote/model/opponent_response.dart';

part 'chat_list_item_response.freezed.dart';
part 'chat_list_item_response.g.dart';

@freezed
class ChatListItemResponse with _$ChatListItemResponse {
  const factory ChatListItemResponse({
    @JsonKey(name: 'opponent') required OpponentResponse opponent,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _ChatListItemResponse;

  factory ChatListItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatListItemResponseFromJson(json);
}
