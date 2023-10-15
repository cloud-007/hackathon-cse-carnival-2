import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reachout/di_setup.dart';
import 'package:reachout/domain/model/chat_iitem.dart';
import 'package:reachout/domain/usecase/chat/fetch_chat_use_case.dart';
import 'package:reachout/domain/usecase/chat/send_message_use_case.dart';
import 'package:reachout/presentation/screen/chat_detail/state/chat_detail_ui_state.dart';

class ChatDetailNotifier extends StateNotifier<ChatDetailUiState> {
  ChatDetailNotifier({required int opponentId})
      : super(const ChatDetailUiState.loading()) {
    fetchChatDetail(opponentId: opponentId);
  }

  List<ChatItem> _chats = [];

  Future<void> fetchChatDetail({required int opponentId}) async {
    state = const ChatDetailUiState.loading();

    final useCase = getIt.get<FetchChatDetailUseCase>();
    final result = await useCase(
      pageSize: 100,
      pageNumber: 1,
      opponentId: opponentId,
    );

    state = result.when(
      success: (data) {
        _chats.addAll(data);
        return ChatDetailUiState.success(chats: data);
      },
      failure: (failure) => ChatDetailUiState.error(failure.message),
    );
  }

  Future<void> sendMessage({
    required String message,
    required int receiverId,
  }) async {
    final useCase = getIt.get<SendMessageUseCase>();

    final result = await useCase(
      message: message,
      receiverId: receiverId,
    );

    result.when(
      success: (_) {
        _chats.insert(
          0,
          ChatItem(
            message: message,
            createdAt: DateTime.now(),
            id: 1,
            sender: 1,
            receiver: receiverId,
            isMine: true,
            modifiedAt: DateTime.now(),
          ),
        );
        state = ChatDetailUiState.success(chats: _chats);
      },
      failure: (failure) => ChatDetailUiState.error(failure.message),
    );
  }
}
