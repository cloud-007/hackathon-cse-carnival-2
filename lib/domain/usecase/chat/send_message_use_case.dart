import 'package:reachout/domain/repository/chat_repository.dart';
import 'package:reachout/domain/util/failure.dart';
import 'package:reachout/domain/util/result.dart';

class SendMessageUseCase {
  final ChatRepository _chatRepository;

  SendMessageUseCase({
    required ChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Future<Result<void>> call({
    required String message,
    required int receiverId,
  }) async {
    return _chatRepository
        .sendMessage(
          message: message,
          receiverId: receiverId,
        )
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
