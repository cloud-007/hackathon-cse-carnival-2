// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'featured_section_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeaturedSectionResponse _$FeaturedSectionResponseFromJson(
    Map<String, dynamic> json) {
  return _FeaturedSectionResponse.fromJson(json);
}

/// @nodoc
mixin _$FeaturedSectionResponse {
  @JsonKey(name: 'results')
  List<FeaturedSectionItemResponse> get results =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeaturedSectionResponseCopyWith<FeaturedSectionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedSectionResponseCopyWith<$Res> {
  factory $FeaturedSectionResponseCopyWith(FeaturedSectionResponse value,
          $Res Function(FeaturedSectionResponse) then) =
      _$FeaturedSectionResponseCopyWithImpl<$Res, FeaturedSectionResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'results') List<FeaturedSectionItemResponse> results});
}

/// @nodoc
class _$FeaturedSectionResponseCopyWithImpl<$Res,
        $Val extends FeaturedSectionResponse>
    implements $FeaturedSectionResponseCopyWith<$Res> {
  _$FeaturedSectionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<FeaturedSectionItemResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeaturedSectionResponseImplCopyWith<$Res>
    implements $FeaturedSectionResponseCopyWith<$Res> {
  factory _$$FeaturedSectionResponseImplCopyWith(
          _$FeaturedSectionResponseImpl value,
          $Res Function(_$FeaturedSectionResponseImpl) then) =
      __$$FeaturedSectionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'results') List<FeaturedSectionItemResponse> results});
}

/// @nodoc
class __$$FeaturedSectionResponseImplCopyWithImpl<$Res>
    extends _$FeaturedSectionResponseCopyWithImpl<$Res,
        _$FeaturedSectionResponseImpl>
    implements _$$FeaturedSectionResponseImplCopyWith<$Res> {
  __$$FeaturedSectionResponseImplCopyWithImpl(
      _$FeaturedSectionResponseImpl _value,
      $Res Function(_$FeaturedSectionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$FeaturedSectionResponseImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<FeaturedSectionItemResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeaturedSectionResponseImpl implements _FeaturedSectionResponse {
  const _$FeaturedSectionResponseImpl(
      {@JsonKey(name: 'results')
      required final List<FeaturedSectionItemResponse> results})
      : _results = results;

  factory _$FeaturedSectionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeaturedSectionResponseImplFromJson(json);

  final List<FeaturedSectionItemResponse> _results;
  @override
  @JsonKey(name: 'results')
  List<FeaturedSectionItemResponse> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'FeaturedSectionResponse(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedSectionResponseImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedSectionResponseImplCopyWith<_$FeaturedSectionResponseImpl>
      get copyWith => __$$FeaturedSectionResponseImplCopyWithImpl<
          _$FeaturedSectionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeaturedSectionResponseImplToJson(
      this,
    );
  }
}

abstract class _FeaturedSectionResponse implements FeaturedSectionResponse {
  const factory _FeaturedSectionResponse(
          {@JsonKey(name: 'results')
          required final List<FeaturedSectionItemResponse> results}) =
      _$FeaturedSectionResponseImpl;

  factory _FeaturedSectionResponse.fromJson(Map<String, dynamic> json) =
      _$FeaturedSectionResponseImpl.fromJson;

  @override
  @JsonKey(name: 'results')
  List<FeaturedSectionItemResponse> get results;
  @override
  @JsonKey(ignore: true)
  _$$FeaturedSectionResponseImplCopyWith<_$FeaturedSectionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
