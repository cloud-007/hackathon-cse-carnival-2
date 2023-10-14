import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_ui_state.freezed.dart';

@freezed
class AuthUiState with _$AuthUiState {
  const factory AuthUiState.anonymous() = AnonymousState;

  const factory AuthUiState.loading() = LoadingState;

  const factory AuthUiState.authenticated() = AuthenticatedState;

  const factory AuthUiState.error(String message) = ErrorState;
}
