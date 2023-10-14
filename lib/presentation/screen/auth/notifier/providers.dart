// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// typedef AuthNotifierProvider //
//     = StateNotifierProvider<AuthNotifier, AuthUiState>;
//
// final AuthNotifierProvider authNotifierProvider =
//     StateNotifierProvider(_getAuthNotifier);
//
// //region :: Private methods
// AuthNotifier _getAuthNotifier(StateNotifierProviderRef ref) => AuthNotifier();
//
// UserInfoNotifier _getUserInfoNotifier(StateNotifierProviderRef ref) {
//   // Listening to auth state changes to update user info
//   // when user signs in or out.
//   final autState = ref.watch(authNotifierProvider);
//   return UserInfoNotifier(autState);
// }
// //endregion
