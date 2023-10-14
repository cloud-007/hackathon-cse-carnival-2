import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reachout/presentation/screen/consultation/notifier/consultation_notifier.dart';
import 'package:reachout/presentation/screen/consultation/state/consultation_ui_state.dart';

typedef ConsultationNotifierProvider = StateNotifierProviderFamily<
    ConsultationNotifier, ConsultationUiState, String?>;

final ConsultationNotifierProvider consultationNotifierProvider =
    StateNotifierProvider.family(
  (ref, key) => ConsultationNotifier(searchTerm: key),
);
