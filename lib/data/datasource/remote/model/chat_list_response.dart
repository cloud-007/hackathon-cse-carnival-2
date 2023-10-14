import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reachout/data/datasource/remote/model/chat_list_item_response.dart';

part 'chat_list_response.freezed.dart';
part 'chat_list_response.g.dart';

@freezed
class ChatListResponse with _$ChatListResponse {
  const factory ChatListResponse({
    @JsonKey(name: 'results') required List<ChatListItemResponse> results,
  }) = _ChatListResponse;

  factory ChatListResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatListResponseFromJson(json);
}
