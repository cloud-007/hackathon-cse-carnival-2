import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reachout/presentation/screen/auth/notifier/providers.dart';
import 'package:reachout/presentation/screen/auth/state/auth_ui_state.dart';
import 'package:reachout/presentation/screen/home/widgets/user_info.dart';

class MoreScreen extends ConsumerWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authNotifierProvider, (_, state) {
      state.whenOrNull(
        anonymous: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Logged out successfully')),
          );
        },
      );
    });

    final authUiState = ref.watch(authNotifierProvider);

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('More', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const UserInfo(),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    const ActionCard(
                      title: 'About Us',
                      icon: Icons.info_outline,
                    ),
                    const Divider(),
                    const ActionCard(
                      title: 'Privacy Policy',
                      icon: Icons.privacy_tip_outlined,
                    ),
                    const Divider(),
                    const ActionCard(
                      title: 'Terms & Conditions',
                      icon: Icons.description_outlined,
                    ),
                    const Divider(),
                    const ActionCard(
                      title: 'Contact Us',
                      icon: Icons.contact_support_outlined,
                    ),
                    const Divider(),
                    const ActionCard(
                      title: 'Rate Us',
                      icon: Icons.star_outline,
                    ),
                    const Divider(),
                    const ActionCard(
                      title: 'Share App',
                      icon: Icons.share_outlined,
                    ),
                    if (authUiState is AuthenticatedState) ...[
                      const Divider(),
                      ActionCard(
                        title: 'Log Out',
                        icon: Icons.logout,
                        onTap: () {
                          ref.read(authNotifierProvider.notifier).signOut();
                        },
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;

  const ActionCard({
    Key? key,
    required this.title,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Coming soon')),
            );
          },
      child: SizedBox(
        height: 48,
        child: Row(
          children: [
            Icon(icon, color: Colors.grey.shade600),
            const SizedBox(width: 16),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
