// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendMessageRequestBodyImpl _$$SendMessageRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$SendMessageRequestBodyImpl(
      message: json['message'] as String,
      receiverId: json['receiver'] as int,
    );

Map<String, dynamic> _$$SendMessageRequestBodyImplToJson(
        _$SendMessageRequestBodyImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'receiver': instance.receiverId,
    };
