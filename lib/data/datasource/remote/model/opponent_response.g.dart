// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opponent_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpponentResponseImpl _$$OpponentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OpponentResponseImpl(
      id: json['id'] as int,
      username: json['username'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      picture: json['picture'] as String,
      profile:
          ProfileResponse.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OpponentResponseImplToJson(
        _$OpponentResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'picture': instance.picture,
      'profile': instance.profile,
    };
