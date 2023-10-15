import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reachout/domain/model/chat_iitem.dart';

part 'chat_detail_ui_state.freezed.dart';

@freezed
class ChatDetailUiState with _$ChatDetailUiState {
  const factory ChatDetailUiState.loading() = LoadingState;

  const factory ChatDetailUiState.success({
    required List<ChatItem> chats,
  }) = SuccessState;

  const factory ChatDetailUiState.error(String message) = ErrorState;
}
