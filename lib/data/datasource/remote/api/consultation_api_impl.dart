import 'package:reachout/data/datasource/remote/api/consultation_api.dart';
import 'package:reachout/data/datasource/remote/model/consultation_service_paginated_response.dart';
import 'package:reachout/data/datasource/remote/model/featured_section_response.dart';
import 'package:reachout/data/datasource/remote/util/api_client.dart';

class ConsultationApiImpl implements ConsultationApi {
  final ApiClient _client;

  static const featuredSectionUrl = 'core/v1/featured/';
  static const consultationServiceUrl = 'service/v1/services/';

  ConsultationApiImpl({required ApiClient client}) : _client = client;

  @override
  Future<FeaturedSectionResponse> getFeaturedSections({
    String? key,
  }) {
    return _client.get<JSONObject, FeaturedSectionResponse>(
      path: featuredSectionUrl,
      queryParameters: {'key': key},
      converter: (json) => FeaturedSectionResponse.fromJson(json),
    );
  }

  @override
  Future<ConsultationServicePaginatedResponse> getConsultationService({
    String? key,
  }) {
    return _client.get<JSONObject, ConsultationServicePaginatedResponse>(
      path: consultationServiceUrl,
      queryParameters: {'key': key},
      converter: (json) => ConsultationServicePaginatedResponse.fromJson(json),
    );
  }
}
