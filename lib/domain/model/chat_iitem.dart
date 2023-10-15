class ChatItem {
  final int id;
  final int sender;
  final int receiver;
  final String message;
  final bool isMine;
  final DateTime createdAt;
  final DateTime modifiedAt;

  ChatItem({
    required this.id,
    required this.message,
    required this.sender,
    required this.receiver,
    required this.isMine,
    required this.createdAt,
    required this.modifiedAt,
  });
}
