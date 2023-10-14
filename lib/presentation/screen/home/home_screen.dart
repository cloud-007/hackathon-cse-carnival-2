import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reachout/presentation/screen/home/widgets/home_carousel.dart';
import 'package:reachout/presentation/screen/home/widgets/search_view.dart';
import 'package:reachout/presentation/screen/home/widgets/section_view.dart';
import 'package:reachout/presentation/screen/home/widgets/user_info.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: UserInfo(),
            ),
            HomeCarousel(),
            HomeSearch(),
            SectionView(),
          ],
        ),
      ),
    );
  }
}
