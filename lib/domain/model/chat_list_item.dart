import 'package:reachout/domain/model/account/profile.dart';

class ChatListItemUser {
  final int id;
  final String username;
  final String firstName;
  final String lastName;
  final String email;
  final String picture;
  final Profile profile;

  ChatListItemUser({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.picture,
    required this.profile,
  });
}

class ChatListItem {
  final ChatListItemUser sender;
  final String message;
  final DateTime createdAt;

  ChatListItem({
    required this.sender,
    required this.message,
    required this.createdAt,
  });
}
