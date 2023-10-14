// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'featured_section_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeaturedSectionItemResponse _$FeaturedSectionItemResponseFromJson(
    Map<String, dynamic> json) {
  return _FeaturedSectionItemResponse.fromJson(json);
}

/// @nodoc
mixin _$FeaturedSectionItemResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'cards')
  List<FeaturedCardResponseItem> get cards =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeaturedSectionItemResponseCopyWith<FeaturedSectionItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedSectionItemResponseCopyWith<$Res> {
  factory $FeaturedSectionItemResponseCopyWith(
          FeaturedSectionItemResponse value,
          $Res Function(FeaturedSectionItemResponse) then) =
      _$FeaturedSectionItemResponseCopyWithImpl<$Res,
          FeaturedSectionItemResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'cards') List<FeaturedCardResponseItem> cards});
}

/// @nodoc
class _$FeaturedSectionItemResponseCopyWithImpl<$Res,
        $Val extends FeaturedSectionItemResponse>
    implements $FeaturedSectionItemResponseCopyWith<$Res> {
  _$FeaturedSectionItemResponseCopyWithImpl(this._value, this._then);

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
    Object? cards = null,
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
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<FeaturedCardResponseItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeaturedSectionItemResponseImplCopyWith<$Res>
    implements $FeaturedSectionItemResponseCopyWith<$Res> {
  factory _$$FeaturedSectionItemResponseImplCopyWith(
          _$FeaturedSectionItemResponseImpl value,
          $Res Function(_$FeaturedSectionItemResponseImpl) then) =
      __$$FeaturedSectionItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'cards') List<FeaturedCardResponseItem> cards});
}

/// @nodoc
class __$$FeaturedSectionItemResponseImplCopyWithImpl<$Res>
    extends _$FeaturedSectionItemResponseCopyWithImpl<$Res,
        _$FeaturedSectionItemResponseImpl>
    implements _$$FeaturedSectionItemResponseImplCopyWith<$Res> {
  __$$FeaturedSectionItemResponseImplCopyWithImpl(
      _$FeaturedSectionItemResponseImpl _value,
      $Res Function(_$FeaturedSectionItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? cards = null,
  }) {
    return _then(_$FeaturedSectionItemResponseImpl(
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
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<FeaturedCardResponseItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeaturedSectionItemResponseImpl
    implements _FeaturedSectionItemResponse {
  const _$FeaturedSectionItemResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'cards')
      required final List<FeaturedCardResponseItem> cards})
      : _cards = cards;

  factory _$FeaturedSectionItemResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FeaturedSectionItemResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  final List<FeaturedCardResponseItem> _cards;
  @override
  @JsonKey(name: 'cards')
  List<FeaturedCardResponseItem> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'FeaturedSectionItemResponse(id: $id, title: $title, description: $description, cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedSectionItemResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedSectionItemResponseImplCopyWith<_$FeaturedSectionItemResponseImpl>
      get copyWith => __$$FeaturedSectionItemResponseImplCopyWithImpl<
          _$FeaturedSectionItemResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeaturedSectionItemResponseImplToJson(
      this,
    );
  }
}

abstract class _FeaturedSectionItemResponse
    implements FeaturedSectionItemResponse {
  const factory _FeaturedSectionItemResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'cards')
          required final List<FeaturedCardResponseItem> cards}) =
      _$FeaturedSectionItemResponseImpl;

  factory _FeaturedSectionItemResponse.fromJson(Map<String, dynamic> json) =
      _$FeaturedSectionItemResponseImpl.fromJson;

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
  @JsonKey(name: 'cards')
  List<FeaturedCardResponseItem> get cards;
  @override
  @JsonKey(ignore: true)
  _$$FeaturedSectionItemResponseImplCopyWith<_$FeaturedSectionItemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
