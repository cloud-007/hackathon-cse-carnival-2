// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_section_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeaturedSectionResponseImpl _$$FeaturedSectionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FeaturedSectionResponseImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) =>
              FeaturedSectionItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FeaturedSectionResponseImplToJson(
        _$FeaturedSectionResponseImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
