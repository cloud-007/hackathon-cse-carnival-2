// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'featured_cards_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeaturedCardResponseItem _$FeaturedCardResponseItemFromJson(
    Map<String, dynamic> json) {
  return _FeaturedCardResponseItem.fromJson(json);
}

/// @nodoc
mixin _$FeaturedCardResponseItem {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'details')
  List<String> get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeaturedCardResponseItemCopyWith<FeaturedCardResponseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedCardResponseItemCopyWith<$Res> {
  factory $FeaturedCardResponseItemCopyWith(FeaturedCardResponseItem value,
          $Res Function(FeaturedCardResponseItem) then) =
      _$FeaturedCardResponseItemCopyWithImpl<$Res, FeaturedCardResponseItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'details') List<String> details});
}

/// @nodoc
class _$FeaturedCardResponseItemCopyWithImpl<$Res,
        $Val extends FeaturedCardResponseItem>
    implements $FeaturedCardResponseItemCopyWith<$Res> {
  _$FeaturedCardResponseItemCopyWithImpl(this._value, this._then);

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
    Object? thumbnailUrl = null,
    Object? imageUrl = null,
    Object? details = null,
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
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeaturedCardResponseItemImplCopyWith<$Res>
    implements $FeaturedCardResponseItemCopyWith<$Res> {
  factory _$$FeaturedCardResponseItemImplCopyWith(
          _$FeaturedCardResponseItemImpl value,
          $Res Function(_$FeaturedCardResponseItemImpl) then) =
      __$$FeaturedCardResponseItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'details') List<String> details});
}

/// @nodoc
class __$$FeaturedCardResponseItemImplCopyWithImpl<$Res>
    extends _$FeaturedCardResponseItemCopyWithImpl<$Res,
        _$FeaturedCardResponseItemImpl>
    implements _$$FeaturedCardResponseItemImplCopyWith<$Res> {
  __$$FeaturedCardResponseItemImplCopyWithImpl(
      _$FeaturedCardResponseItemImpl _value,
      $Res Function(_$FeaturedCardResponseItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? thumbnailUrl = null,
    Object? imageUrl = null,
    Object? details = null,
  }) {
    return _then(_$FeaturedCardResponseItemImpl(
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
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeaturedCardResponseItemImpl implements _FeaturedCardResponseItem {
  const _$FeaturedCardResponseItemImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'thumbnail_url') required this.thumbnailUrl,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'details') required final List<String> details})
      : _details = details;

  factory _$FeaturedCardResponseItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeaturedCardResponseItemImplFromJson(json);

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
  @JsonKey(name: 'thumbnail_url')
  final String thumbnailUrl;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  final List<String> _details;
  @override
  @JsonKey(name: 'details')
  List<String> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  @override
  String toString() {
    return 'FeaturedCardResponseItem(id: $id, title: $title, description: $description, thumbnailUrl: $thumbnailUrl, imageUrl: $imageUrl, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedCardResponseItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      thumbnailUrl, imageUrl, const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedCardResponseItemImplCopyWith<_$FeaturedCardResponseItemImpl>
      get copyWith => __$$FeaturedCardResponseItemImplCopyWithImpl<
          _$FeaturedCardResponseItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeaturedCardResponseItemImplToJson(
      this,
    );
  }
}

abstract class _FeaturedCardResponseItem implements FeaturedCardResponseItem {
  const factory _FeaturedCardResponseItem(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'thumbnail_url') required final String thumbnailUrl,
          @JsonKey(name: 'image_url') required final String imageUrl,
          @JsonKey(name: 'details') required final List<String> details}) =
      _$FeaturedCardResponseItemImpl;

  factory _FeaturedCardResponseItem.fromJson(Map<String, dynamic> json) =
      _$FeaturedCardResponseItemImpl.fromJson;

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
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'details')
  List<String> get details;
  @override
  @JsonKey(ignore: true)
  _$$FeaturedCardResponseItemImplCopyWith<_$FeaturedCardResponseItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
