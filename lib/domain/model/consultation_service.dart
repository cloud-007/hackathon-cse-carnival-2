import 'package:reachout/domain/model/account/user.dart';
import 'package:reachout/domain/model/service_category.dart';

class ConsultationService {
  final int id;
  final User user;
  final String title;
  final String description;
  final int price;
  final int duration;
  final int totalSessions;
  final List<String> keywords;
  final double rating;
  final ServiceCategory category;

  ConsultationService({
    required this.id,
    required this.user,
    required this.title,
    required this.description,
    required this.price,
    required this.duration,
    required this.totalSessions,
    required this.keywords,
    required this.rating,
    required this.category,
  });
}
