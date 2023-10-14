// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation_service_paginated_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsultationServicePaginatedResponseImpl
    _$$ConsultationServicePaginatedResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultationServicePaginatedResponseImpl(
          id: json['count'] as int,
          next: json['next'] as String?,
          previous: json['previous'] as String?,
          results: (json['results'] as List<dynamic>)
              .map((e) => ConsultationServiceResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$ConsultationServicePaginatedResponseImplToJson(
        _$ConsultationServicePaginatedResponseImpl instance) =>
    <String, dynamic>{
      'count': instance.id,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
