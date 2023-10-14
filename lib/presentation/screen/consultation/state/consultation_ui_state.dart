import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reachout/domain/model/consultation_service.dart';
import 'package:reachout/domain/model/featured_card.dart';

part 'consultation_ui_state.freezed.dart';

@freezed
class ConsultationUiState with _$ConsultationUiState {
  const factory ConsultationUiState.loading() = LoadingState;

  const factory ConsultationUiState.success({
    required List<ConsultationService> services,
  }) = SuccessState;

  const factory ConsultationUiState.error(String message) = ErrorState;
}
