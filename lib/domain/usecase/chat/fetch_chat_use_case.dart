import 'package:reachout/domain/model/chat_iitem.dart';
import 'package:reachout/domain/repository/chat_repository.dart';
import 'package:reachout/domain/util/failure.dart';
import 'package:reachout/domain/util/result.dart';

class FetchChatDetailUseCase {
  final ChatRepository _chatRepository;

  FetchChatDetailUseCase({
    required ChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Future<Result<List<ChatItem>>> call(
      {required int pageSize,
      required int pageNumber,
      required int opponentId}) async {
    return _chatRepository
        .getChatDetails(
          pageSize: pageSize,
          pageNumber: pageNumber,
          opponentId: opponentId,
        )
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
