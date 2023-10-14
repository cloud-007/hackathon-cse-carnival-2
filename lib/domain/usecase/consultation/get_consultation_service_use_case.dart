import 'package:reachout/domain/model/consultation_service.dart';
import 'package:reachout/domain/repository/consultation_repository.dart';
import 'package:reachout/domain/util/failure.dart';
import 'package:reachout/domain/util/result.dart';

class GetConsultationServiceUseCase {
  final ConsultationRepository _consultationRepository;

  GetConsultationServiceUseCase({
    required ConsultationRepository consultationRepository,
  }) : _consultationRepository = consultationRepository;

  Future<Result<List<ConsultationService>>> call({
    required String? key,
  }) async {
    return _consultationRepository
        .getConsultationService(key: key)
        .then((value) => Result.success(value))
        .onError((Failure error, _) => Result.failure(error));
  }
}
