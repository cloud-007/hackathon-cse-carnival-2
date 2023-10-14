import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reachout/data/datasource/remote/model/consultation_service_response.dart';

part 'consultation_service_paginated_response.freezed.dart';
part 'consultation_service_paginated_response.g.dart';

@freezed
class ConsultationServicePaginatedResponse
    with _$ConsultationServicePaginatedResponse {
  const factory ConsultationServicePaginatedResponse({
    @JsonKey(name: 'count') required int id,
    @JsonKey(name: 'next') required String? next,
    @JsonKey(name: 'previous') required String? previous,
    @JsonKey(name: 'results')
    required List<ConsultationServiceResponse> results,
  }) = _ConsultationServicePaginatedResponse;

  factory ConsultationServicePaginatedResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ConsultationServicePaginatedResponseFromJson(json);
}
