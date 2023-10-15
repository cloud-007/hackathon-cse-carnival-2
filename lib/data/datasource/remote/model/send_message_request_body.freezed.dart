// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_message_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendMessageRequestBody _$SendMessageRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _SendMessageRequestBody.fromJson(json);
}

/// @nodoc
mixin _$SendMessageRequestBody {
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiver')
  int get receiverId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendMessageRequestBodyCopyWith<SendMessageRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageRequestBodyCopyWith<$Res> {
  factory $SendMessageRequestBodyCopyWith(SendMessageRequestBody value,
          $Res Function(SendMessageRequestBody) then) =
      _$SendMessageRequestBodyCopyWithImpl<$Res, SendMessageRequestBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String message,
      @JsonKey(name: 'receiver') int receiverId});
}

/// @nodoc
class _$SendMessageRequestBodyCopyWithImpl<$Res,
        $Val extends SendMessageRequestBody>
    implements $SendMessageRequestBodyCopyWith<$Res> {
  _$SendMessageRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? receiverId = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendMessageRequestBodyImplCopyWith<$Res>
    implements $SendMessageRequestBodyCopyWith<$Res> {
  factory _$$SendMessageRequestBodyImplCopyWith(
          _$SendMessageRequestBodyImpl value,
          $Res Function(_$SendMessageRequestBodyImpl) then) =
      __$$SendMessageRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String message,
      @JsonKey(name: 'receiver') int receiverId});
}

/// @nodoc
class __$$SendMessageRequestBodyImplCopyWithImpl<$Res>
    extends _$SendMessageRequestBodyCopyWithImpl<$Res,
        _$SendMessageRequestBodyImpl>
    implements _$$SendMessageRequestBodyImplCopyWith<$Res> {
  __$$SendMessageRequestBodyImplCopyWithImpl(
      _$SendMessageRequestBodyImpl _value,
      $Res Function(_$SendMessageRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? receiverId = null,
  }) {
    return _then(_$SendMessageRequestBodyImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$SendMessageRequestBodyImpl implements _SendMessageRequestBody {
  const _$SendMessageRequestBodyImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'receiver') required this.receiverId});

  factory _$SendMessageRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendMessageRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'receiver')
  final int receiverId;

  @override
  String toString() {
    return 'SendMessageRequestBody(message: $message, receiverId: $receiverId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageRequestBodyImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, receiverId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageRequestBodyImplCopyWith<_$SendMessageRequestBodyImpl>
      get copyWith => __$$SendMessageRequestBodyImplCopyWithImpl<
          _$SendMessageRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendMessageRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _SendMessageRequestBody implements SendMessageRequestBody {
  const factory _SendMessageRequestBody(
          {@JsonKey(name: 'message') required final String message,
          @JsonKey(name: 'receiver') required final int receiverId}) =
      _$SendMessageRequestBodyImpl;

  factory _SendMessageRequestBody.fromJson(Map<String, dynamic> json) =
      _$SendMessageRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'receiver')
  int get receiverId;
  @override
  @JsonKey(ignore: true)
  _$$SendMessageRequestBodyImplCopyWith<_$SendMessageRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
