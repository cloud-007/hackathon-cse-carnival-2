import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reachout/di_setup.dart';
import 'package:reachout/domain/usecase/account/check_is_logged_in_use_case.dart';
import 'package:reachout/domain/usecase/account/google_sign_in_use_case.dart';
import 'package:reachout/domain/usecase/account/sign_out_use_case.dart';
import 'package:reachout/presentation/screen/auth/state/auth_ui_state.dart';
import 'package:reachout/presentation/util/logger.dart';

class AuthNotifier extends StateNotifier<AuthUiState> {
  AuthNotifier() : super(const AuthUiState.anonymous()) {
    _checkAuthStatus();
  }

  void _checkAuthStatus() async {
    state = const AuthUiState.loading();

    final useCase = getIt<CheckIsLoggedInUseCase>();
    final isLoggedIn = useCase();

    state = isLoggedIn
        ? const AuthUiState.authenticated()
        : const AuthUiState.anonymous();
  }

  void googleSignIn() async {
    state = const AuthUiState.loading();

    final useCase = getIt<GoogleSignInUseCase>();
    final result = await useCase();

    state = result.when(
      success: (_) => const AuthUiState.authenticated(),
      failure: (failure) {
        logger.e('Google sign in failed: ${failure.message}');
        return AuthUiState.error(failure.message);
      },
    );
  }

  void signOut() async {
    final useCase = getIt<SignOutUseCase>();
    final result = await useCase();

    state = result.when(
      success: (_) => const AuthUiState.anonymous(),
      failure: (failure) => AuthUiState.error(failure.message),
    );
  }
}
