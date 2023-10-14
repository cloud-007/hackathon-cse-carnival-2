import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_category_response.freezed.dart';
part 'service_category_response.g.dart';

@freezed
class ServiceCategoryResponse with _$ServiceCategoryResponse {
  const factory ServiceCategoryResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
  }) = _ServiceCategoryResponse;

  factory ServiceCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$ServiceCategoryResponseFromJson(json);
}
