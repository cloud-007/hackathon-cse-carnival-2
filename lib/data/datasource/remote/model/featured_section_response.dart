import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reachout/data/datasource/remote/model/featured_section_item_response.dart';

part 'featured_section_response.freezed.dart';
part 'featured_section_response.g.dart';

@freezed
class FeaturedSectionResponse with _$FeaturedSectionResponse {
  const factory FeaturedSectionResponse({
    @JsonKey(name: 'results')
    required List<FeaturedSectionItemResponse> results,
  }) = _FeaturedSectionResponse;

  factory FeaturedSectionResponse.fromJson(Map<String, dynamic> json) =>
      _$FeaturedSectionResponseFromJson(json);
}
