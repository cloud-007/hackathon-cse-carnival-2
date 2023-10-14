import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reachout/domain/model/featured_card.dart';

part 'featured_section_ui_state.freezed.dart';

@freezed
class FeaturedSectionUiState with _$FeaturedSectionUiState {
  const factory FeaturedSectionUiState.loading() = LoadingState;

  const factory FeaturedSectionUiState.success({
    required List<FeaturedSection> featuredList,
  }) = SuccessState;

  const factory FeaturedSectionUiState.error(String message) = ErrorState;
}
