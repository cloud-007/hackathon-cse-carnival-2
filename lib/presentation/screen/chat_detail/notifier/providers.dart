import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reachout/presentation/screen/chat_detail/notifier/chat_detail_notifier.dart';
import 'package:reachout/presentation/screen/chat_detail/state/chat_detail_ui_state.dart';

typedef ChatDetailNotifierProvider = AutoDisposeStateNotifierProviderFamily<
    ChatDetailNotifier, ChatDetailUiState, int>;

final chatDetailNotifierProvider = StateNotifierProvider.autoDispose
    .family<ChatDetailNotifier, ChatDetailUiState, int>(
  (ref, opponentId) => ChatDetailNotifier(opponentId: opponentId),
);
