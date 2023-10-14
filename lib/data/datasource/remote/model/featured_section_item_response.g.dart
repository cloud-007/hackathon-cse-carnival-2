// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_section_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeaturedSectionItemResponseImpl _$$FeaturedSectionItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FeaturedSectionItemResponseImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      cards: (json['cards'] as List<dynamic>)
          .map((e) =>
              FeaturedCardResponseItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FeaturedSectionItemResponseImplToJson(
        _$FeaturedSectionItemResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'cards': instance.cards,
    };
