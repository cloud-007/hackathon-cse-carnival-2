// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_auth_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerAuthRequest _$ServerAuthRequestFromJson(Map<String, dynamic> json) {
  return _ServerAuthRequest.fromJson(json);
}

/// @nodoc
mixin _$ServerAuthRequest {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  String? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'firebase_push_token')
  String? get firebasePushToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerAuthRequestCopyWith<ServerAuthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerAuthRequestCopyWith<$Res> {
  factory $ServerAuthRequestCopyWith(
          ServerAuthRequest value, $Res Function(ServerAuthRequest) then) =
      _$ServerAuthRequestCopyWithImpl<$Res, ServerAuthRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'device_id') String? deviceId,
      @JsonKey(name: 'firebase_push_token') String? firebasePushToken});
}

/// @nodoc
class _$ServerAuthRequestCopyWithImpl<$Res, $Val extends ServerAuthRequest>
    implements $ServerAuthRequestCopyWith<$Res> {
  _$ServerAuthRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? deviceId = freezed,
    Object? firebasePushToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      firebasePushToken: freezed == firebasePushToken
          ? _value.firebasePushToken
          : firebasePushToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerAuthRequestImplCopyWith<$Res>
    implements $ServerAuthRequestCopyWith<$Res> {
  factory _$$ServerAuthRequestImplCopyWith(_$ServerAuthRequestImpl value,
          $Res Function(_$ServerAuthRequestImpl) then) =
      __$$ServerAuthRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'device_id') String? deviceId,
      @JsonKey(name: 'firebase_push_token') String? firebasePushToken});
}

/// @nodoc
class __$$ServerAuthRequestImplCopyWithImpl<$Res>
    extends _$ServerAuthRequestCopyWithImpl<$Res, _$ServerAuthRequestImpl>
    implements _$$ServerAuthRequestImplCopyWith<$Res> {
  __$$ServerAuthRequestImplCopyWithImpl(_$ServerAuthRequestImpl _value,
      $Res Function(_$ServerAuthRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? deviceId = freezed,
    Object? firebasePushToken = freezed,
  }) {
    return _then(_$ServerAuthRequestImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      firebasePushToken: freezed == firebasePushToken
          ? _value.firebasePushToken
          : firebasePushToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ServerAuthRequestImpl implements _ServerAuthRequest {
  const _$ServerAuthRequestImpl(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'device_id') this.deviceId,
      @JsonKey(name: 'firebase_push_token') this.firebasePushToken});

  factory _$ServerAuthRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerAuthRequestImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'device_id')
  final String? deviceId;
  @override
  @JsonKey(name: 'firebase_push_token')
  final String? firebasePushToken;

  @override
  String toString() {
    return 'ServerAuthRequest(accessToken: $accessToken, deviceId: $deviceId, firebasePushToken: $firebasePushToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerAuthRequestImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.firebasePushToken, firebasePushToken) ||
                other.firebasePushToken == firebasePushToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, deviceId, firebasePushToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerAuthRequestImplCopyWith<_$ServerAuthRequestImpl> get copyWith =>
      __$$ServerAuthRequestImplCopyWithImpl<_$ServerAuthRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerAuthRequestImplToJson(
      this,
    );
  }
}

abstract class _ServerAuthRequest implements ServerAuthRequest {
  const factory _ServerAuthRequest(
      {@JsonKey(name: 'access_token') required final String accessToken,
      @JsonKey(name: 'device_id') final String? deviceId,
      @JsonKey(name: 'firebase_push_token')
      final String? firebasePushToken}) = _$ServerAuthRequestImpl;

  factory _ServerAuthRequest.fromJson(Map<String, dynamic> json) =
      _$ServerAuthRequestImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'device_id')
  String? get deviceId;
  @override
  @JsonKey(name: 'firebase_push_token')
  String? get firebasePushToken;
  @override
  @JsonKey(ignore: true)
  _$$ServerAuthRequestImplCopyWith<_$ServerAuthRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
