// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerAuthResponse _$ServerAuthResponseFromJson(Map<String, dynamic> json) {
  return _ServerAuthResponse.fromJson(json);
}

/// @nodoc
mixin _$ServerAuthResponse {
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'created')
  bool get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserResponse get userResponse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerAuthResponseCopyWith<ServerAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerAuthResponseCopyWith<$Res> {
  factory $ServerAuthResponseCopyWith(
          ServerAuthResponse value, $Res Function(ServerAuthResponse) then) =
      _$ServerAuthResponseCopyWithImpl<$Res, ServerAuthResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'created') bool created,
      @JsonKey(name: 'user') UserResponse userResponse});

  $UserResponseCopyWith<$Res> get userResponse;
}

/// @nodoc
class _$ServerAuthResponseCopyWithImpl<$Res, $Val extends ServerAuthResponse>
    implements $ServerAuthResponseCopyWith<$Res> {
  _$ServerAuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? created = null,
    Object? userResponse = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as bool,
      userResponse: null == userResponse
          ? _value.userResponse
          : userResponse // ignore: cast_nullable_to_non_nullable
              as UserResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserResponseCopyWith<$Res> get userResponse {
    return $UserResponseCopyWith<$Res>(_value.userResponse, (value) {
      return _then(_value.copyWith(userResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServerAuthResponseImplCopyWith<$Res>
    implements $ServerAuthResponseCopyWith<$Res> {
  factory _$$ServerAuthResponseImplCopyWith(_$ServerAuthResponseImpl value,
          $Res Function(_$ServerAuthResponseImpl) then) =
      __$$ServerAuthResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'created') bool created,
      @JsonKey(name: 'user') UserResponse userResponse});

  @override
  $UserResponseCopyWith<$Res> get userResponse;
}

/// @nodoc
class __$$ServerAuthResponseImplCopyWithImpl<$Res>
    extends _$ServerAuthResponseCopyWithImpl<$Res, _$ServerAuthResponseImpl>
    implements _$$ServerAuthResponseImplCopyWith<$Res> {
  __$$ServerAuthResponseImplCopyWithImpl(_$ServerAuthResponseImpl _value,
      $Res Function(_$ServerAuthResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? created = null,
    Object? userResponse = null,
  }) {
    return _then(_$ServerAuthResponseImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as bool,
      userResponse: null == userResponse
          ? _value.userResponse
          : userResponse // ignore: cast_nullable_to_non_nullable
              as UserResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerAuthResponseImpl implements _ServerAuthResponse {
  const _$ServerAuthResponseImpl(
      {@JsonKey(name: 'token') required this.token,
      @JsonKey(name: 'created') required this.created,
      @JsonKey(name: 'user') required this.userResponse});

  factory _$ServerAuthResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerAuthResponseImplFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String token;
  @override
  @JsonKey(name: 'created')
  final bool created;
  @override
  @JsonKey(name: 'user')
  final UserResponse userResponse;

  @override
  String toString() {
    return 'ServerAuthResponse(token: $token, created: $created, userResponse: $userResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerAuthResponseImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.userResponse, userResponse) ||
                other.userResponse == userResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, created, userResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerAuthResponseImplCopyWith<_$ServerAuthResponseImpl> get copyWith =>
      __$$ServerAuthResponseImplCopyWithImpl<_$ServerAuthResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerAuthResponseImplToJson(
      this,
    );
  }
}

abstract class _ServerAuthResponse implements ServerAuthResponse {
  const factory _ServerAuthResponse(
          {@JsonKey(name: 'token') required final String token,
          @JsonKey(name: 'created') required final bool created,
          @JsonKey(name: 'user') required final UserResponse userResponse}) =
      _$ServerAuthResponseImpl;

  factory _ServerAuthResponse.fromJson(Map<String, dynamic> json) =
      _$ServerAuthResponseImpl.fromJson;

  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(name: 'created')
  bool get created;
  @override
  @JsonKey(name: 'user')
  UserResponse get userResponse;
  @override
  @JsonKey(ignore: true)
  _$$ServerAuthResponseImplCopyWith<_$ServerAuthResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
