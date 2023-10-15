import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';
import 'package:reachout/di_setup.dart';
import 'package:reachout/domain/usecase/chat/fetch_chat_list_use_case.dart';
import 'package:reachout/presentation/screen/chat/state/chat_ui_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../util/logger.dart';

class ChatNotifier extends StateNotifier<ChatUiState> {
  ChatNotifier() : super(const ChatUiState.loading()) {
    fetchChatList();
  }

  Future<void> fetchChatList() async {
    state = const ChatUiState.loading();

    final useCase = getIt.get<FetchChatListUseCase>();

    final result = await useCase();
    state = result.when(
      success: (data) => ChatUiState.success(chats: data),
      failure: (failure) => ChatUiState.error(failure.message),
    );
  }
}
