import 'package:flutter/material.dart';
import 'package:reachout/domain/model/featured_card.dart';
import 'package:reachout/presentation/routes.dart';
import 'package:reachout/presentation/screen/main_screen.dart';
import 'package:reachout/presentation/theme/color.dart';

class FeatureDetailScreenArgs {
  final FeaturedCard featuredCard;

  const FeatureDetailScreenArgs({
    required this.featuredCard,
  });
}

class FeatureDetailScreen extends StatefulWidget {
  const FeatureDetailScreen({super.key});

  @override
  State<FeatureDetailScreen> createState() => _FeatureDetailScreenState();
}

class _FeatureDetailScreenState extends State<FeatureDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final settings = ModalRoute.of(context)?.settings;
    final args = settings?.arguments as FeatureDetailScreenArgs?;
    final featuredCard = args?.featuredCard;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              featuredCard?.imageUrl ?? '',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                featuredCard?.title ?? 'Feature Title',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                featuredCard?.description ?? 'Feature Description',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Details',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: featuredCard?.details.length ?? 0,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              itemBuilder: (context, index) {
                final detail = featuredCard?.details[index];
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        detail ?? 'Details',
                        style: Theme.of(context).textTheme.bodyMedium,
                        textHeightBehavior: const TextHeightBehavior(
                          applyHeightToFirstAscent: false,
                        ),
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 8.0);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).popAndPushNamed(
              Routes.main,
              arguments: MainScreenArgs(index: 1),
            );
          },
          child: const Text(
            'Get Started',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
