import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reachout/domain/model/account/user.dart';

part 'user_info_ui_state.freezed.dart';

@freezed
class UserInfoUiState with _$UserInfoUiState {
  const factory UserInfoUiState.anonymous() = AnonymousState;

  const factory UserInfoUiState.loading() = LoadingState;

  const factory UserInfoUiState.success(User user) = SuccessState;

  const factory UserInfoUiState.error(String message) = ErrorState;
}
