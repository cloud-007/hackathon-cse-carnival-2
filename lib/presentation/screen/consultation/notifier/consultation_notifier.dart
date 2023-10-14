import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reachout/di_setup.dart';
import 'package:reachout/domain/usecase/consultation/get_consultation_service_use_case.dart';
import 'package:reachout/presentation/screen/consultation/state/consultation_ui_state.dart';

class ConsultationNotifier extends StateNotifier<ConsultationUiState> {
  ConsultationNotifier({
    required this.searchTerm,
  }) : super(const ConsultationUiState.loading()) {
    fetchConsultationData(key: searchTerm);
  }

  String? searchTerm;

  Future<void> fetchConsultationData({required String? key}) async {
    state = const ConsultationUiState.loading();

    final useCase = getIt.get<GetConsultationServiceUseCase>();
    final result = await useCase(key: key);

    state = result.when(
      success: (data) => ConsultationUiState.success(services: data),
      failure: (failure) => ConsultationUiState.error(failure.message),
    );
  }

  void setSearchTerm({required String? key}) {
    searchTerm = key;
  }

  void clearSearchTerm() {
    searchTerm = null;
  }
}
