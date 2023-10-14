import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reachout/data/datasource/remote/model/featured_cards_response.dart';

part 'featured_section_item_response.freezed.dart';
part 'featured_section_item_response.g.dart';

@freezed
class FeaturedSectionItemResponse with _$FeaturedSectionItemResponse {
  const factory FeaturedSectionItemResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'cards') required List<FeaturedCardResponseItem> cards,
  }) = _FeaturedSectionItemResponse;

  factory FeaturedSectionItemResponse.fromJson(Map<String, dynamic> json) =>
      _$FeaturedSectionItemResponseFromJson(json);
}
