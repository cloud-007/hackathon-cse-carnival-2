import 'package:reachout/data/datasource/remote/api/chat_api.dart';
import 'package:reachout/data/datasource/source/chat_remote_data_source.dart';
import 'package:reachout/data/mapper/chat_mapper.dart';
import 'package:reachout/domain/model/chat_list_item.dart';

class ChatRemoteDataSourceImpl implements ChatRemoteDataSource {
  final ChatApi _chatApi;

  ChatRemoteDataSourceImpl({required ChatApi chatApi}) : _chatApi = chatApi;

  @override
  Future<List<ChatListItem>> fetchChatList() async {
    final response = await _chatApi.fetchChatList();
    return response.results.map((e) => e.toDomain()).toList();
  }
}
