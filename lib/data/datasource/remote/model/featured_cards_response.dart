import 'package:freezed_annotation/freezed_annotation.dart';

part 'featured_cards_response.freezed.dart';
part 'featured_cards_response.g.dart';

@freezed
class FeaturedCardResponseItem with _$FeaturedCardResponseItem {
  const factory FeaturedCardResponseItem({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'thumbnail_url') required String thumbnailUrl,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'details') required List<String> details,
  }) = _FeaturedCardResponseItem;

  factory FeaturedCardResponseItem.fromJson(Map<String, dynamic> json) =>
      _$FeaturedCardResponseItemFromJson(json);
}
