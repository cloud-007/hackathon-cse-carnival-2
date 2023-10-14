import 'package:reachout/domain/model/featured_card.dart';

abstract class ConsultationRepository {
  Future<List<FeaturedSection>> getFeaturedSections({String? key});
}
