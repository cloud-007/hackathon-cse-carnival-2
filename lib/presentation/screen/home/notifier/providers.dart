import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reachout/presentation/screen/home/notifier/featured_notifier.dart';
import 'package:reachout/presentation/screen/home/state/featured_section_ui_state.dart';

typedef FeaturedSectionNotifierProvider //
    = StateNotifierProviderFamily<FeaturedNotifier, FeaturedSectionUiState,
        String?>;

final FeaturedSectionNotifierProvider featuredSectionNotifierProvider =
    StateNotifierProvider.family(
  (ref, queryString) => FeaturedNotifier(key: 'queryString'),
);
