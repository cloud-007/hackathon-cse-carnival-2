import 'package:reachout/domain/model/chat_iitem.dart';
import 'package:reachout/domain/model/chat_list_item.dart';

abstract class ChatRemoteDataSource {
  Future<List<ChatListItem>> fetchChatList();

  Future<List<ChatItem>> getChatDetails({
    required int pageSize,
    required int pageNumber,
    required int opponentId,
  });

  Future<void> sendMessage({
    required String message,
    required int receiverId,
  });
}
