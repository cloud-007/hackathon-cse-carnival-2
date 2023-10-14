import 'package:reachout/domain/model/featured_card.dart';
import 'package:reachout/domain/repository/consultation_repository.dart';
import 'package:reachout/domain/util/failure.dart';
import 'package:reachout/domain/util/result.dart';

class GetFeaturedSectionUseCase {
  final ConsultationRepository _consultationRepository;

  GetFeaturedSectionUseCase(
      {required ConsultationRepository consultationRepository})
      : _consultationRepository = consultationRepository;

  Future<Result<List<FeaturedSection>>> call({
    required String? key,
  }) async {
    return _consultationRepository
        .getFeaturedSections()
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
