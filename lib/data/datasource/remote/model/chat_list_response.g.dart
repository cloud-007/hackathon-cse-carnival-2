// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatListResponseImpl _$$ChatListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatListResponseImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => ChatListItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatListResponseImplToJson(
        _$ChatListResponseImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
