import 'package:reachout/data/datasource/remote/model/chat_list_response.dart';
import 'package:reachout/data/datasource/remote/model/chat_response.dart';
import 'package:reachout/data/datasource/remote/model/send_message_request_body.dart';

abstract class ChatApi {
  Future<ChatListResponse> fetchChatList();

  Future<ChatResponse> getChatDetails({
    required int pageSize,
    required int pageNumber,
    required int opponentId,
  });

  Future<void> sendMessage({
    required SendMessageRequestBody requestBody,
  });
}
