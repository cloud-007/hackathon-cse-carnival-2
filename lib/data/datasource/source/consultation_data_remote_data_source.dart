import 'package:reachout/domain/model/consultation_service.dart';
import 'package:reachout/domain/model/featured_card.dart';

abstract class ConsultationRemoteDataSource {
  Future<List<FeaturedSection>> getFeaturedSections({
    String? key,
  });

  Future<List<ConsultationService>> getConsultationService({String? key});
}
