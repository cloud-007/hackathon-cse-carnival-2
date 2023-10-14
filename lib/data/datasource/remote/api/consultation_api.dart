import 'package:reachout/data/datasource/remote/model/featured_section_response.dart';

abstract class ConsultationApi {
  Future<FeaturedSectionResponse> getFeaturedSections({
    String? key,
  });
}
