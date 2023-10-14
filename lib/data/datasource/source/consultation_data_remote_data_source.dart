import 'package:reachout/domain/model/featured_card.dart';

abstract class ConsultationRemoteDataSource {
  Future<List<FeaturedSection>> getFeaturedSections({
    String? key,
  });
}
