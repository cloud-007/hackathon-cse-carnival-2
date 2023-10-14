import 'package:reachout/data/datasource/source/chat_remote_data_source.dart';
import 'package:reachout/domain/model/chat_list_item.dart';
import 'package:reachout/domain/repository/chat_repository.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatRemoteDataSource _chatRemoteDataSource;

  ChatRepositoryImpl({
    required ChatRemoteDataSource chatRemoteDataSource,
  }) : _chatRemoteDataSource = chatRemoteDataSource;

  @override
  Future<List<ChatListItem>> fetchChatList() {
    return _chatRemoteDataSource.fetchChatList();
  }
}
