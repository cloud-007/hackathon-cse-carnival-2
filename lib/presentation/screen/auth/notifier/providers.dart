import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reachout/presentation/screen/auth/notifier/auth_notifier.dart';
import 'package:reachout/presentation/screen/auth/notifier/user_info_notifier.dart';
import 'package:reachout/presentation/screen/auth/state/auth_ui_state.dart';
import 'package:reachout/presentation/screen/auth/state/user_info_ui_state.dart';

typedef AuthNotifierProvider //
    = StateNotifierProvider<AuthNotifier, AuthUiState>;

final AuthNotifierProvider authNotifierProvider =
    StateNotifierProvider(_getAuthNotifier);

typedef UserInfoNotifierProvider
    = StateNotifierProvider<UserInfoNotifier, UserInfoUiState>;

final UserInfoNotifierProvider userInfoNotifierProvider =
    StateNotifierProvider(_getUserInfoNotifier);

//region :: Private methods
AuthNotifier _getAuthNotifier(StateNotifierProviderRef ref) => AuthNotifier();

UserInfoNotifier _getUserInfoNotifier(StateNotifierProviderRef ref) {
  // Listening to auth state changes to update user info
  // when user signs in or out.
  final autState = ref.watch(authNotifierProvider);
  return UserInfoNotifier(autState);
}
//endregion
