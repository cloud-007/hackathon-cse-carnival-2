// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileResponseImpl _$$ProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileResponseImpl(
      id: json['id'] as int,
      mobileNumber: json['mobile_number'] as String,
      address: json['address'] as String?,
      institution: json['institution'] as String?,
      occupation: json['occupation'] as String?,
      isConsultant: json['consultant'] as bool,
    );

Map<String, dynamic> _$$ProfileResponseImplToJson(
        _$ProfileResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mobile_number': instance.mobileNumber,
      'address': instance.address,
      'institution': instance.institution,
      'occupation': instance.occupation,
      'consultant': instance.isConsultant,
    };
