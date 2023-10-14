// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceCategoryResponse _$ServiceCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _ServiceCategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$ServiceCategoryResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceCategoryResponseCopyWith<ServiceCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCategoryResponseCopyWith<$Res> {
  factory $ServiceCategoryResponseCopyWith(ServiceCategoryResponse value,
          $Res Function(ServiceCategoryResponse) then) =
      _$ServiceCategoryResponseCopyWithImpl<$Res, ServiceCategoryResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class _$ServiceCategoryResponseCopyWithImpl<$Res,
        $Val extends ServiceCategoryResponse>
    implements $ServiceCategoryResponseCopyWith<$Res> {
  _$ServiceCategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceCategoryResponseImplCopyWith<$Res>
    implements $ServiceCategoryResponseCopyWith<$Res> {
  factory _$$ServiceCategoryResponseImplCopyWith(
          _$ServiceCategoryResponseImpl value,
          $Res Function(_$ServiceCategoryResponseImpl) then) =
      __$$ServiceCategoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class __$$ServiceCategoryResponseImplCopyWithImpl<$Res>
    extends _$ServiceCategoryResponseCopyWithImpl<$Res,
        _$ServiceCategoryResponseImpl>
    implements _$$ServiceCategoryResponseImplCopyWith<$Res> {
  __$$ServiceCategoryResponseImplCopyWithImpl(
      _$ServiceCategoryResponseImpl _value,
      $Res Function(_$ServiceCategoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$ServiceCategoryResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceCategoryResponseImpl implements _ServiceCategoryResponse {
  const _$ServiceCategoryResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description});

  factory _$ServiceCategoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceCategoryResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;

  @override
  String toString() {
    return 'ServiceCategoryResponse(id: $id, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceCategoryResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceCategoryResponseImplCopyWith<_$ServiceCategoryResponseImpl>
      get copyWith => __$$ServiceCategoryResponseImplCopyWithImpl<
          _$ServiceCategoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceCategoryResponseImplToJson(
      this,
    );
  }
}

abstract class _ServiceCategoryResponse implements ServiceCategoryResponse {
  const factory _ServiceCategoryResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String description}) =
      _$ServiceCategoryResponseImpl;

  factory _ServiceCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$ServiceCategoryResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ServiceCategoryResponseImplCopyWith<_$ServiceCategoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
