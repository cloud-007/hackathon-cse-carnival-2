// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_list_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatListItemResponseImpl _$$ChatListItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatListItemResponseImpl(
      opponent:
          OpponentResponse.fromJson(json['opponent'] as Map<String, dynamic>),
      message: json['message'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$ChatListItemResponseImplToJson(
        _$ChatListItemResponseImpl instance) =>
    <String, dynamic>{
      'opponent': instance.opponent,
      'message': instance.message,
      'created_at': instance.createdAt.toIso8601String(),
    };
