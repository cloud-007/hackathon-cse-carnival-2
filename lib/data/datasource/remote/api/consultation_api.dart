import 'package:reachout/data/datasource/remote/model/consultation_service_paginated_response.dart';
import 'package:reachout/data/datasource/remote/model/featured_section_response.dart';

abstract class ConsultationApi {
  Future<FeaturedSectionResponse> getFeaturedSections({
    String? key,
  });

  Future<ConsultationServicePaginatedResponse> getConsultationService({
    String? key,
  });
}
