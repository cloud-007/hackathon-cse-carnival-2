import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reachout/domain/model/chat_list_item.dart';

part 'chat_ui_state.freezed.dart';

@freezed
class ChatUiState with _$ChatUiState {
  const factory ChatUiState.loading() = LoadingState;

  const factory ChatUiState.success({
    required List<ChatListItem> chats,
  }) = SuccessState;

  const factory ChatUiState.error(String message) = ErrorState;
}
