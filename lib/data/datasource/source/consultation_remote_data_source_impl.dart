import 'package:reachout/data/datasource/remote/api/consultation_api.dart';
import 'package:reachout/data/datasource/source/consultation_data_remote_data_source.dart';
import 'package:reachout/data/mapper/consultation_service_mapper.dart';
import 'package:reachout/data/mapper/featured_section_response_mapper.dart';
import 'package:reachout/domain/model/consultation_service.dart';
import 'package:reachout/domain/model/featured_card.dart';

class ConsultationRemoteDataSourceImpl implements ConsultationRemoteDataSource {
  final ConsultationApi _consultationApi;

  ConsultationRemoteDataSourceImpl({required ConsultationApi consultationApi})
      : _consultationApi = consultationApi;

  @override
  Future<List<FeaturedSection>> getFeaturedSections({
    String? key,
  }) async {
    final response = await _consultationApi.getFeaturedSections(key: key);
    return response.toDomain();
  }

  @override
  Future<List<ConsultationService>> getConsultationService({
    String? key,
  }) async {
    final response = await _consultationApi.getConsultationService(key: key);
    return response.results.map((e) => e.toDomain()).toList();
  }
}
