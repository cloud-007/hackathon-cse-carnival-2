// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultation_service_paginated_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConsultationServicePaginatedResponse
    _$ConsultationServicePaginatedResponseFromJson(Map<String, dynamic> json) {
  return _ConsultationServicePaginatedResponse.fromJson(json);
}

/// @nodoc
mixin _$ConsultationServicePaginatedResponse {
  @JsonKey(name: 'count')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  String? get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous')
  String? get previous => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<ConsultationServiceResponse> get results =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultationServicePaginatedResponseCopyWith<
          ConsultationServicePaginatedResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationServicePaginatedResponseCopyWith<$Res> {
  factory $ConsultationServicePaginatedResponseCopyWith(
          ConsultationServicePaginatedResponse value,
          $Res Function(ConsultationServicePaginatedResponse) then) =
      _$ConsultationServicePaginatedResponseCopyWithImpl<$Res,
          ConsultationServicePaginatedResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int id,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'previous') String? previous,
      @JsonKey(name: 'results') List<ConsultationServiceResponse> results});
}

/// @nodoc
class _$ConsultationServicePaginatedResponseCopyWithImpl<$Res,
        $Val extends ConsultationServicePaginatedResponse>
    implements $ConsultationServicePaginatedResponseCopyWith<$Res> {
  _$ConsultationServicePaginatedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ConsultationServiceResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultationServicePaginatedResponseImplCopyWith<$Res>
    implements $ConsultationServicePaginatedResponseCopyWith<$Res> {
  factory _$$ConsultationServicePaginatedResponseImplCopyWith(
          _$ConsultationServicePaginatedResponseImpl value,
          $Res Function(_$ConsultationServicePaginatedResponseImpl) then) =
      __$$ConsultationServicePaginatedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int id,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'previous') String? previous,
      @JsonKey(name: 'results') List<ConsultationServiceResponse> results});
}

/// @nodoc
class __$$ConsultationServicePaginatedResponseImplCopyWithImpl<$Res>
    extends _$ConsultationServicePaginatedResponseCopyWithImpl<$Res,
        _$ConsultationServicePaginatedResponseImpl>
    implements _$$ConsultationServicePaginatedResponseImplCopyWith<$Res> {
  __$$ConsultationServicePaginatedResponseImplCopyWithImpl(
      _$ConsultationServicePaginatedResponseImpl _value,
      $Res Function(_$ConsultationServicePaginatedResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$ConsultationServicePaginatedResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ConsultationServiceResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultationServicePaginatedResponseImpl
    implements _ConsultationServicePaginatedResponse {
  const _$ConsultationServicePaginatedResponseImpl(
      {@JsonKey(name: 'count') required this.id,
      @JsonKey(name: 'next') required this.next,
      @JsonKey(name: 'previous') required this.previous,
      @JsonKey(name: 'results')
      required final List<ConsultationServiceResponse> results})
      : _results = results;

  factory _$ConsultationServicePaginatedResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultationServicePaginatedResponseImplFromJson(json);

  @override
  @JsonKey(name: 'count')
  final int id;
  @override
  @JsonKey(name: 'next')
  final String? next;
  @override
  @JsonKey(name: 'previous')
  final String? previous;
  final List<ConsultationServiceResponse> _results;
  @override
  @JsonKey(name: 'results')
  List<ConsultationServiceResponse> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ConsultationServicePaginatedResponse(id: $id, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationServicePaginatedResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationServicePaginatedResponseImplCopyWith<
          _$ConsultationServicePaginatedResponseImpl>
      get copyWith => __$$ConsultationServicePaginatedResponseImplCopyWithImpl<
          _$ConsultationServicePaginatedResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationServicePaginatedResponseImplToJson(
      this,
    );
  }
}

abstract class _ConsultationServicePaginatedResponse
    implements ConsultationServicePaginatedResponse {
  const factory _ConsultationServicePaginatedResponse(
          {@JsonKey(name: 'count') required final int id,
          @JsonKey(name: 'next') required final String? next,
          @JsonKey(name: 'previous') required final String? previous,
          @JsonKey(name: 'results')
          required final List<ConsultationServiceResponse> results}) =
      _$ConsultationServicePaginatedResponseImpl;

  factory _ConsultationServicePaginatedResponse.fromJson(
          Map<String, dynamic> json) =
      _$ConsultationServicePaginatedResponseImpl.fromJson;

  @override
  @JsonKey(name: 'count')
  int get id;
  @override
  @JsonKey(name: 'next')
  String? get next;
  @override
  @JsonKey(name: 'previous')
  String? get previous;
  @override
  @JsonKey(name: 'results')
  List<ConsultationServiceResponse> get results;
  @override
  @JsonKey(ignore: true)
  _$$ConsultationServicePaginatedResponseImplCopyWith<
          _$ConsultationServicePaginatedResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
