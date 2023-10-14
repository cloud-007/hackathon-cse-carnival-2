import 'package:reachout/domain/model/account/user.dart';

class ConsultationService {
  final int id;
  final User user;
  final String title;
  final String? description;
  final int price;
  final int duration;
  final int totalSession;

  ConsultationService({
    required this.id,
    required this.user,
    required this.title,
    required this.description,
    required this.price,
    required this.duration,
    required this.totalSession,
  });
}
