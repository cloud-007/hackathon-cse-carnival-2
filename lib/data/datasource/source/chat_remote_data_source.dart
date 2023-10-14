import 'package:reachout/domain/model/chat_list_item.dart';

abstract class ChatRemoteDataSource {
  Future<List<ChatListItem>> fetchChatList();
}
