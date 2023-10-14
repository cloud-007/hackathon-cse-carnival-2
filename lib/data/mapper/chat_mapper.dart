import 'package:reachout/data/datasource/remote/model/chat_list_item_response.dart';
import 'package:reachout/data/datasource/remote/model/opponent_response.dart';
import 'package:reachout/data/mapper/account_mapper.dart';
import 'package:reachout/domain/model/chat_list_item.dart';

extension OpponentResponseMapper on OpponentResponse {
  ChatListItemUser toChatListItemUser() {
    return ChatListItemUser(
      id: id,
      email: email,
      firstName: firstName,
      lastName: lastName,
      picture: picture,
      profile: profile.toProfile(),
      username: username,
    );
  }
}

extension ChatListOpponentMapper on ChatListItemResponse {
  ChatListItem toDomain() {
    return ChatListItem(
      message: message,
      createdAt: createdAt,
      sender: opponent.toChatListItemUser(),
    );
  }
}
