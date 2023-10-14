// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultation_service_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConsultationServiceResponse _$ConsultationServiceResponseFromJson(
    Map<String, dynamic> json) {
  return _ConsultationServiceResponse.fromJson(json);
}

/// @nodoc
mixin _$ConsultationServiceResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserResponse get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  int get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_sessions')
  int get totalSessions => throw _privateConstructorUsedError;
  @JsonKey(name: 'keywords')
  List<String> get keywords => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  ServiceCategoryResponse get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultationServiceResponseCopyWith<ConsultationServiceResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationServiceResponseCopyWith<$Res> {
  factory $ConsultationServiceResponseCopyWith(
          ConsultationServiceResponse value,
          $Res Function(ConsultationServiceResponse) then) =
      _$ConsultationServiceResponseCopyWithImpl<$Res,
          ConsultationServiceResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'user') UserResponse user,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'price') int price,
      @JsonKey(name: 'duration') int duration,
      @JsonKey(name: 'total_sessions') int totalSessions,
      @JsonKey(name: 'keywords') List<String> keywords,
      @JsonKey(name: 'rating') double rating,
      @JsonKey(name: 'category') ServiceCategoryResponse category});

  $UserResponseCopyWith<$Res> get user;
  $ServiceCategoryResponseCopyWith<$Res> get category;
}

/// @nodoc
class _$ConsultationServiceResponseCopyWithImpl<$Res,
        $Val extends ConsultationServiceResponse>
    implements $ConsultationServiceResponseCopyWith<$Res> {
  _$ConsultationServiceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? duration = null,
    Object? totalSessions = null,
    Object? keywords = null,
    Object? rating = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      totalSessions: null == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ServiceCategoryResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserResponseCopyWith<$Res> get user {
    return $UserResponseCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceCategoryResponseCopyWith<$Res> get category {
    return $ServiceCategoryResponseCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultationServiceResponseImplCopyWith<$Res>
    implements $ConsultationServiceResponseCopyWith<$Res> {
  factory _$$ConsultationServiceResponseImplCopyWith(
          _$ConsultationServiceResponseImpl value,
          $Res Function(_$ConsultationServiceResponseImpl) then) =
      __$$ConsultationServiceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'user') UserResponse user,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'price') int price,
      @JsonKey(name: 'duration') int duration,
      @JsonKey(name: 'total_sessions') int totalSessions,
      @JsonKey(name: 'keywords') List<String> keywords,
      @JsonKey(name: 'rating') double rating,
      @JsonKey(name: 'category') ServiceCategoryResponse category});

  @override
  $UserResponseCopyWith<$Res> get user;
  @override
  $ServiceCategoryResponseCopyWith<$Res> get category;
}

/// @nodoc
class __$$ConsultationServiceResponseImplCopyWithImpl<$Res>
    extends _$ConsultationServiceResponseCopyWithImpl<$Res,
        _$ConsultationServiceResponseImpl>
    implements _$$ConsultationServiceResponseImplCopyWith<$Res> {
  __$$ConsultationServiceResponseImplCopyWithImpl(
      _$ConsultationServiceResponseImpl _value,
      $Res Function(_$ConsultationServiceResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? duration = null,
    Object? totalSessions = null,
    Object? keywords = null,
    Object? rating = null,
    Object? category = null,
  }) {
    return _then(_$ConsultationServiceResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      totalSessions: null == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int,
      keywords: null == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ServiceCategoryResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultationServiceResponseImpl
    implements _ConsultationServiceResponse {
  const _$ConsultationServiceResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'duration') required this.duration,
      @JsonKey(name: 'total_sessions') required this.totalSessions,
      @JsonKey(name: 'keywords') required final List<String> keywords,
      @JsonKey(name: 'rating') required this.rating,
      @JsonKey(name: 'category') required this.category})
      : _keywords = keywords;

  factory _$ConsultationServiceResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultationServiceResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'user')
  final UserResponse user;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'price')
  final int price;
  @override
  @JsonKey(name: 'duration')
  final int duration;
  @override
  @JsonKey(name: 'total_sessions')
  final int totalSessions;
  final List<String> _keywords;
  @override
  @JsonKey(name: 'keywords')
  List<String> get keywords {
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keywords);
  }

  @override
  @JsonKey(name: 'rating')
  final double rating;
  @override
  @JsonKey(name: 'category')
  final ServiceCategoryResponse category;

  @override
  String toString() {
    return 'ConsultationServiceResponse(id: $id, user: $user, title: $title, description: $description, price: $price, duration: $duration, totalSessions: $totalSessions, keywords: $keywords, rating: $rating, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationServiceResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.totalSessions, totalSessions) ||
                other.totalSessions == totalSessions) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user,
      title,
      description,
      price,
      duration,
      totalSessions,
      const DeepCollectionEquality().hash(_keywords),
      rating,
      category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationServiceResponseImplCopyWith<_$ConsultationServiceResponseImpl>
      get copyWith => __$$ConsultationServiceResponseImplCopyWithImpl<
          _$ConsultationServiceResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationServiceResponseImplToJson(
      this,
    );
  }
}

abstract class _ConsultationServiceResponse
    implements ConsultationServiceResponse {
  const factory _ConsultationServiceResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'user') required final UserResponse user,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'price') required final int price,
          @JsonKey(name: 'duration') required final int duration,
          @JsonKey(name: 'total_sessions') required final int totalSessions,
          @JsonKey(name: 'keywords') required final List<String> keywords,
          @JsonKey(name: 'rating') required final double rating,
          @JsonKey(name: 'category')
          required final ServiceCategoryResponse category}) =
      _$ConsultationServiceResponseImpl;

  factory _ConsultationServiceResponse.fromJson(Map<String, dynamic> json) =
      _$ConsultationServiceResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'user')
  UserResponse get user;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'price')
  int get price;
  @override
  @JsonKey(name: 'duration')
  int get duration;
  @override
  @JsonKey(name: 'total_sessions')
  int get totalSessions;
  @override
  @JsonKey(name: 'keywords')
  List<String> get keywords;
  @override
  @JsonKey(name: 'rating')
  double get rating;
  @override
  @JsonKey(name: 'category')
  ServiceCategoryResponse get category;
  @override
  @JsonKey(ignore: true)
  _$$ConsultationServiceResponseImplCopyWith<_$ConsultationServiceResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
