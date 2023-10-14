import 'package:reachout/data/datasource/remote/model/chat_list_response.dart';

abstract class ChatApi {
  Future<ChatListResponse> fetchChatList();
}
