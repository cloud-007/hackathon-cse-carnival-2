// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatItemResponseImpl _$$ChatItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatItemResponseImpl(
      id: json['id'] as int,
      sender: json['sender'] as int,
      receiver: json['receiver'] as int,
      message: json['message'] as String,
      isMine: json['is_mine'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      modifiedAt: DateTime.parse(json['modified_at'] as String),
    );

Map<String, dynamic> _$$ChatItemResponseImplToJson(
        _$ChatItemResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'message': instance.message,
      'is_mine': instance.isMine,
      'created_at': instance.createdAt.toIso8601String(),
      'modified_at': instance.modifiedAt.toIso8601String(),
    };
