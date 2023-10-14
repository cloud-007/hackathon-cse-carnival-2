import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reachout/di_setup.dart';
import 'package:reachout/domain/usecase/consultation/get_featured_section_use_case.dart';
import 'package:reachout/presentation/screen/home/state/featured_section_ui_state.dart';

class FeaturedNotifier extends StateNotifier<FeaturedSectionUiState> {
  FeaturedNotifier({
    required String? key,
  }) : super(const FeaturedSectionUiState.loading()) {
    fetchFeaturedSection(key: key);
  }

  Future<void> fetchFeaturedSection({required String? key}) async {
    state = const FeaturedSectionUiState.loading();

    final useCase = getIt.get<GetFeaturedSectionUseCase>();
    final result = await useCase(key: key);

    state = result.when(
      success: (data) => FeaturedSectionUiState.success(featuredList: data),
      failure: (failure) => FeaturedSectionUiState.error(failure.message),
    );
  }
}
