import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reachout/presentation/routes.dart';
import 'package:reachout/presentation/screen/auth/notifier/providers.dart';
import 'package:reachout/presentation/screen/main_screen.dart';

class UserInfo extends ConsumerWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfoUiState = ref.watch(userInfoNotifierProvider);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        userInfoUiState.maybeWhen(
          success: (user) => GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                Routes.main,
                arguments: MainScreenArgs(index: 3),
              );
            },
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  backgroundImage: NetworkImage(user.picture ?? ''),
                  radius: 24,
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.fullName,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      user.email,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
          orElse: () => GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(Routes.auth);
            },
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  radius: 24,
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Username',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      'Login / Signup',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
