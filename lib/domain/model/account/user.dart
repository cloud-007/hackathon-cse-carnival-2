import 'package:reachout/domain/model/account/profile.dart';

class User {
  final int id;
  final String username;
  final String firstName;
  final String lastName;
  final String email;
  final String? picture;
  final Profile? profile;

  User({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.picture,
    required this.profile,
  });

  String get fullName => '$firstName $lastName';
}
