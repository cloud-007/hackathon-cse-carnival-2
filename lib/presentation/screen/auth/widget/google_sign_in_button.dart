import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reachout/presentation/screen/auth/notifier/providers.dart';
import 'package:reachout/presentation/screen/auth/state/user_info_ui_state.dart';

class GoogleSignInButton extends ConsumerStatefulWidget {
  const GoogleSignInButton({Key? key}) : super(key: key);

  @override
  ConsumerState<GoogleSignInButton> createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends ConsumerState<GoogleSignInButton> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final authUiState = ref.watch(authNotifierProvider);

    // Resetting the local loading state
    if (authUiState is! LoadingState) _isLoading = false;

    final buttonLabel = !_isLoading
        ? Text(
            'Continue with Google',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.black87, fontWeight: FontWeight.w600),
          )
        : const SpinKitThreeBounce(size: 16, color: Colors.black45);

    return Stack(
      children: <Widget>[
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            splashFactory: NoSplash.splashFactory,
            elevation: 0,
            backgroundColor: Colors.black12,
            foregroundColor: Colors.black87,
            shadowColor: Colors.transparent,
          ),
          onPressed: authUiState.maybeWhen(
            loading: () => null,
            orElse: () => () {
              setState(() => _isLoading = true);
              ref.read(authNotifierProvider.notifier).googleSignIn();
            },
          ),
          icon: SvgPicture.asset(
            'assets/icons/ic-google.svg',
            height: 24,
            width: 24,
          ),
          label: Container(), // Empty container
        ),
        Positioned.fill(
          child: GestureDetector(
            onTap: authUiState.maybeWhen(
              loading: () => null,
              orElse: () => () {
                setState(() => _isLoading = true);
                ref.read(authNotifierProvider.notifier).googleSignIn();
              },
            ),
            child: Align(
              alignment: Alignment.center,
              child: buttonLabel,
            ),
          ),
        ),
      ],
    );
  }
}
