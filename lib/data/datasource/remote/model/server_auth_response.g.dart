// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServerAuthResponseImpl _$$ServerAuthResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerAuthResponseImpl(
      token: json['token'] as String,
      created: json['created'] as bool,
      userResponse: UserResponse.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ServerAuthResponseImplToJson(
        _$ServerAuthResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'created': instance.created,
      'user': instance.userResponse,
    };
