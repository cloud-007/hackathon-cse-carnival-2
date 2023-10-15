import 'package:reachout/data/datasource/remote/api/chat_api.dart';
import 'package:reachout/data/datasource/remote/model/chat_list_response.dart';
import 'package:reachout/data/datasource/remote/model/chat_response.dart';
import 'package:reachout/data/datasource/remote/model/send_message_request_body.dart';
import 'package:reachout/data/datasource/remote/util/api_client.dart';

class ChatApiImpl implements ChatApi {
  final ApiClient _client;

  static const fetchChatListUrl = 'chat/v1/contacts';
  static const chatUrl = 'chat/v1/conversations/';

  ChatApiImpl({required ApiClient client}) : _client = client;

  @override
  Future<ChatListResponse> fetchChatList() {
    return _client.get<JSONObject, ChatListResponse>(
      path: fetchChatListUrl,
      converter: (json) => ChatListResponse.fromJson(json),
    );
  }

  @override
  Future<ChatResponse> getChatDetails({
    required int pageSize,
    required int pageNumber,
    required int opponentId,
  }) {
    return _client.get<JSONObject, ChatResponse>(
      path: chatUrl,
      queryParameters: {
        'page_size': pageSize,
        'page_number': pageNumber,
        'opponent': opponentId,
      },
      converter: (json) => ChatResponse.fromJson(json),
    );
  }

  @override
  Future<void> sendMessage({
    required SendMessageRequestBody requestBody,
  }) {
    return _client.post<JSONObject, void>(
      path: chatUrl,
      data: requestBody.toJson(),
      converter: (json) {},
    );
  }
}
