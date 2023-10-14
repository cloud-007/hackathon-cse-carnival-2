import 'package:reachout/domain/model/chat_list_item.dart';

abstract class ChatRepository {
  Future<List<ChatListItem>> fetchChatList();
}
