// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_cards_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeaturedCardResponseItemImpl _$$FeaturedCardResponseItemImplFromJson(
        Map<String, dynamic> json) =>
    _$FeaturedCardResponseItemImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
      imageUrl: json['image_url'] as String,
      details:
          (json['details'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$FeaturedCardResponseItemImplToJson(
        _$FeaturedCardResponseItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'thumbnail_url': instance.thumbnailUrl,
      'image_url': instance.imageUrl,
      'details': instance.details,
    };
