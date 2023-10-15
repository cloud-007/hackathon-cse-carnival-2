import 'package:reachout/data/datasource/remote/api/chat_api.dart';
import 'package:reachout/data/datasource/remote/model/send_message_request_body.dart';
import 'package:reachout/data/datasource/source/chat_remote_data_source.dart';
import 'package:reachout/data/mapper/chat_mapper.dart';
import 'package:reachout/data/mapper/consultation_service_mapper.dart';
import 'package:reachout/domain/model/chat_iitem.dart';
import 'package:reachout/domain/model/chat_list_item.dart';

class ChatRemoteDataSourceImpl implements ChatRemoteDataSource {
  final ChatApi _chatApi;

  ChatRemoteDataSourceImpl({required ChatApi chatApi}) : _chatApi = chatApi;

  @override
  Future<List<ChatListItem>> fetchChatList() async {
    final response = await _chatApi.fetchChatList();
    return response.results.map((e) => e.toDomain()).toList();
  }

  @override
  Future<List<ChatItem>> getChatDetails({
    required int pageSize,
    required int pageNumber,
    required int opponentId,
  }) async {
    final response = await _chatApi.getChatDetails(
      pageSize: pageSize,
      pageNumber: pageNumber,
      opponentId: opponentId,
    );
    return response.results.map((e) => e.toDomain()).toList();
  }

  @override
  Future<void> sendMessage({
    required String message,
    required int receiverId,
  }) async {
    final requestBody = SendMessageRequestBody(
      message: message,
      receiverId: receiverId,
    );
    await _chatApi.sendMessage(requestBody: requestBody);
  }
}
