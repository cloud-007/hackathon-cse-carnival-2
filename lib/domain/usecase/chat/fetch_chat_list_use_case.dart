import 'package:reachout/domain/model/chat_list_item.dart';
import 'package:reachout/domain/repository/chat_repository.dart';
import 'package:reachout/domain/util/failure.dart';
import 'package:reachout/domain/util/result.dart';

class FetchChatListUseCase {
  final ChatRepository _chatRepository;

  FetchChatListUseCase({
    required ChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Future<Result<List<ChatListItem>>> call() async {
    return _chatRepository
        .fetchChatList()
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
