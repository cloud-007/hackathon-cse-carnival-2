import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reachout/presentation/screen/chat/notifier/chat_notifier.dart';
import 'package:reachout/presentation/screen/chat/state/chat_ui_state.dart';

typedef ChatNotifierProvider = StateNotifierProvider<ChatNotifier, ChatUiState>;

final ChatNotifierProvider chatNotifierProvider = StateNotifierProvider(
  (ref) => ChatNotifier(),
);
