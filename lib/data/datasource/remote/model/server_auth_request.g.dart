// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServerAuthRequestImpl _$$ServerAuthRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerAuthRequestImpl(
      accessToken: json['access_token'] as String,
      deviceId: json['device_id'] as String?,
      firebasePushToken: json['firebase_push_token'] as String?,
    );

Map<String, dynamic> _$$ServerAuthRequestImplToJson(
    _$ServerAuthRequestImpl instance) {
  final val = <String, dynamic>{
    'access_token': instance.accessToken,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('device_id', instance.deviceId);
  writeNotNull('firebase_push_token', instance.firebasePushToken);
  return val;
}
