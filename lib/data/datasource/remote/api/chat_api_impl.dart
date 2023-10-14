import 'package:reachout/data/datasource/remote/api/chat_api.dart';
import 'package:reachout/data/datasource/remote/model/chat_list_response.dart';
import 'package:reachout/data/datasource/remote/util/api_client.dart';

class ChatApiImpl implements ChatApi {
  final ApiClient _client;

  static const fetchChatListUrl = 'chat/v1/contacts';

  ChatApiImpl({required ApiClient client}) : _client = client;

  @override
  Future<ChatListResponse> fetchChatList() {
    return _client.get<JSONObject, ChatListResponse>(
      path: fetchChatListUrl,
      converter: (json) => ChatListResponse.fromJson(json),
    );
  }
}
