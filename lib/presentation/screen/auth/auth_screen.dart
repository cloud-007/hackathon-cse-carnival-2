import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reachout/presentation/screen/auth/notifier/providers.dart';
import 'package:reachout/presentation/screen/auth/widget/google_sign_in_button.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authNotifierProvider, (_, state) {
      state.maybeWhen(
        authenticated: () {
          Navigator.of(context).pop(true);
        },
        error: (message) {
          return ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message)),
          );
        },
        orElse: () => null,
      );
    });
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 300),
                  child: SvgPicture.asset(
                    'assets/images/reachout-logo.svg',
                    fit: BoxFit.cover,
                    height: 300,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Continue to sign up for free. '
                    'If you already have an account, we\'ll log you in.',
                    textAlign: TextAlign.center,
                    style: TextStyle(letterSpacing: 0),
                  ),

                  const SizedBox(height: 16),

                  const GoogleSignInButton(), //

                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Maybe later'),
                      ],
                    ),
                  ),

                  // Privacy Policy and Terms of Use
                  const SizedBox(height: 16),
                  const _Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: GoogleFonts.montserrat(
          fontSize: 12,
          height: 1.5,
          color: Colors.black87,
        ),
        children: [
          const TextSpan(
            text: 'By continuing, you agree to our ',
          ),
          TextSpan(
            text: 'Terms of Use',
            style: const TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          const TextSpan(text: '. Read our '),
          TextSpan(
            text: 'Privacy Policy',
            style: const TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
