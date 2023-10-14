import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reachout/data/datasource/remote/model/service_category_response.dart';
import 'package:reachout/data/datasource/remote/model/user_response.dart';

part 'consultation_service_response.freezed.dart';
part 'consultation_service_response.g.dart';

@freezed
class ConsultationServiceResponse with _$ConsultationServiceResponse {
  const factory ConsultationServiceResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'user') required UserResponse user,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'price') required int price,
    @JsonKey(name: 'duration') required int duration,
    @JsonKey(name: 'total_sessions') required int totalSessions,
    @JsonKey(name: 'keywords') required List<String> keywords,
    @JsonKey(name: 'rating') required double rating,
    @JsonKey(name: 'category') required ServiceCategoryResponse category,
  }) = _ConsultationServiceResponse;

  factory ConsultationServiceResponse.fromJson(Map<String, dynamic> json) =>
      _$ConsultationServiceResponseFromJson(json);
}
