// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'opponent_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpponentResponse _$OpponentResponseFromJson(Map<String, dynamic> json) {
  return _OpponentResponse.fromJson(json);
}

/// @nodoc
mixin _$OpponentResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'picture')
  String get picture => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile')
  ProfileResponse get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpponentResponseCopyWith<OpponentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpponentResponseCopyWith<$Res> {
  factory $OpponentResponseCopyWith(
          OpponentResponse value, $Res Function(OpponentResponse) then) =
      _$OpponentResponseCopyWithImpl<$Res, OpponentResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'picture') String picture,
      @JsonKey(name: 'profile') ProfileResponse profile});

  $ProfileResponseCopyWith<$Res> get profile;
}

/// @nodoc
class _$OpponentResponseCopyWithImpl<$Res, $Val extends OpponentResponse>
    implements $OpponentResponseCopyWith<$Res> {
  _$OpponentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? picture = null,
    Object? profile = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileResponseCopyWith<$Res> get profile {
    return $ProfileResponseCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpponentResponseImplCopyWith<$Res>
    implements $OpponentResponseCopyWith<$Res> {
  factory _$$OpponentResponseImplCopyWith(_$OpponentResponseImpl value,
          $Res Function(_$OpponentResponseImpl) then) =
      __$$OpponentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'picture') String picture,
      @JsonKey(name: 'profile') ProfileResponse profile});

  @override
  $ProfileResponseCopyWith<$Res> get profile;
}

/// @nodoc
class __$$OpponentResponseImplCopyWithImpl<$Res>
    extends _$OpponentResponseCopyWithImpl<$Res, _$OpponentResponseImpl>
    implements _$$OpponentResponseImplCopyWith<$Res> {
  __$$OpponentResponseImplCopyWithImpl(_$OpponentResponseImpl _value,
      $Res Function(_$OpponentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? picture = null,
    Object? profile = null,
  }) {
    return _then(_$OpponentResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpponentResponseImpl implements _OpponentResponse {
  const _$OpponentResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'picture') required this.picture,
      @JsonKey(name: 'profile') required this.profile});

  factory _$OpponentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpponentResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'picture')
  final String picture;
  @override
  @JsonKey(name: 'profile')
  final ProfileResponse profile;

  @override
  String toString() {
    return 'OpponentResponse(id: $id, username: $username, firstName: $firstName, lastName: $lastName, email: $email, picture: $picture, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpponentResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, username, firstName, lastName, email, picture, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpponentResponseImplCopyWith<_$OpponentResponseImpl> get copyWith =>
      __$$OpponentResponseImplCopyWithImpl<_$OpponentResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpponentResponseImplToJson(
      this,
    );
  }
}

abstract class _OpponentResponse implements OpponentResponse {
  const factory _OpponentResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'first_name') required final String firstName,
          @JsonKey(name: 'last_name') required final String lastName,
          @JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'picture') required final String picture,
          @JsonKey(name: 'profile') required final ProfileResponse profile}) =
      _$OpponentResponseImpl;

  factory _OpponentResponse.fromJson(Map<String, dynamic> json) =
      _$OpponentResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'picture')
  String get picture;
  @override
  @JsonKey(name: 'profile')
  ProfileResponse get profile;
  @override
  @JsonKey(ignore: true)
  _$$OpponentResponseImplCopyWith<_$OpponentResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
