// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation_service_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsultationServiceResponseImpl _$$ConsultationServiceResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultationServiceResponseImpl(
      id: json['id'] as int,
      user: UserResponse.fromJson(json['user'] as Map<String, dynamic>),
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
      duration: json['duration'] as int,
      totalSessions: json['total_sessions'] as int,
      keywords:
          (json['keywords'] as List<dynamic>).map((e) => e as String).toList(),
      rating: (json['rating'] as num).toDouble(),
      category: ServiceCategoryResponse.fromJson(
          json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConsultationServiceResponseImplToJson(
        _$ConsultationServiceResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'duration': instance.duration,
      'total_sessions': instance.totalSessions,
      'keywords': instance.keywords,
      'rating': instance.rating,
      'category': instance.category,
    };
