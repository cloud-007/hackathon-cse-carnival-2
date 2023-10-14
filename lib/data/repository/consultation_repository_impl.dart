import 'package:reachout/data/datasource/source/consultation_data_remote_data_source.dart';
import 'package:reachout/domain/model/consultation_service.dart';
import 'package:reachout/domain/model/featured_card.dart';
import 'package:reachout/domain/repository/consultation_repository.dart';

class ConsultationRepositoryImpl implements ConsultationRepository {
  final ConsultationRemoteDataSource _consultationRemoteDataSource;

  ConsultationRepositoryImpl({
    required ConsultationRemoteDataSource consultationRemoteDataSource,
  }) : _consultationRemoteDataSource = consultationRemoteDataSource;

  @override
  Future<List<FeaturedSection>> getFeaturedSections({
    String? key,
  }) {
    return _consultationRemoteDataSource.getFeaturedSections(key: key);
  }

  @override
  Future<List<ConsultationService>> getConsultationService({String? key}) {
    return _consultationRemoteDataSource.getConsultationService();
  }
}
