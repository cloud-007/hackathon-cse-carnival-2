import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reachout/presentation/screen/home/notifier/providers.dart';
import 'package:reachout/presentation/screen/home/widgets/loading_shimmer.dart';

class SectionView extends ConsumerWidget {
  const SectionView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(featuredSectionNotifierProvider(null));
    return uiState.when(
      loading: () => const SizedBox(
        height: 400,
        child: SectionViewLoadingShimmer(),
      ),
      success: (data) {
        return ListView.separated(
          shrinkWrap: true,
          itemCount: data.length,
          padding: const EdgeInsets.only(bottom: 32.0),
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final featuredSection = data[index];
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        featuredSection.title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      TextButton(onPressed: () {}, child: const Text('More'))
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: featuredSection.cards.length,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    itemBuilder: (context, index) {
                      final card = featuredSection.cards[index];
                      return Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 300,
                        height: 80,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              card.thumbnailUrl,
                              width: 100,
                              height: 100,
                              loadingBuilder:
                                  (context, child, loadingProgress) {
                                if (loadingProgress == null) {
                                  return child;
                                }
                                return Container(
                                  width: 100,
                                  height: 100,
                                  color: Colors.grey.shade200,
                                );
                              },
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: 100,
                                  height: 100,
                                  color: Colors.grey.shade200,
                                );
                              },
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    card.title,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    card.description,
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider();
                    },
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 20);
          },
        );
      },
      error: (message) {
        return SizedBox(
          height: 400,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(message),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    ref
                        .read(featuredSectionNotifierProvider(null).notifier)
                        .fetchFeaturedSection(
                          key: null,
                        );
                  },
                  child: const Text('Retry'),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
