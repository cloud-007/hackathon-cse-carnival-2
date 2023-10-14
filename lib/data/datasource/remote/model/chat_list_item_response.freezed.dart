// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_list_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatListItemResponse _$ChatListItemResponseFromJson(Map<String, dynamic> json) {
  return _ChatListItemResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatListItemResponse {
  @JsonKey(name: 'opponent')
  OpponentResponse get opponent => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatListItemResponseCopyWith<ChatListItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatListItemResponseCopyWith<$Res> {
  factory $ChatListItemResponseCopyWith(ChatListItemResponse value,
          $Res Function(ChatListItemResponse) then) =
      _$ChatListItemResponseCopyWithImpl<$Res, ChatListItemResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'opponent') OpponentResponse opponent,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'created_at') DateTime createdAt});

  $OpponentResponseCopyWith<$Res> get opponent;
}

/// @nodoc
class _$ChatListItemResponseCopyWithImpl<$Res,
        $Val extends ChatListItemResponse>
    implements $ChatListItemResponseCopyWith<$Res> {
  _$ChatListItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? opponent = null,
    Object? message = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      opponent: null == opponent
          ? _value.opponent
          : opponent // ignore: cast_nullable_to_non_nullable
              as OpponentResponse,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OpponentResponseCopyWith<$Res> get opponent {
    return $OpponentResponseCopyWith<$Res>(_value.opponent, (value) {
      return _then(_value.copyWith(opponent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatListItemResponseImplCopyWith<$Res>
    implements $ChatListItemResponseCopyWith<$Res> {
  factory _$$ChatListItemResponseImplCopyWith(_$ChatListItemResponseImpl value,
          $Res Function(_$ChatListItemResponseImpl) then) =
      __$$ChatListItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'opponent') OpponentResponse opponent,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'created_at') DateTime createdAt});

  @override
  $OpponentResponseCopyWith<$Res> get opponent;
}

/// @nodoc
class __$$ChatListItemResponseImplCopyWithImpl<$Res>
    extends _$ChatListItemResponseCopyWithImpl<$Res, _$ChatListItemResponseImpl>
    implements _$$ChatListItemResponseImplCopyWith<$Res> {
  __$$ChatListItemResponseImplCopyWithImpl(_$ChatListItemResponseImpl _value,
      $Res Function(_$ChatListItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? opponent = null,
    Object? message = null,
    Object? createdAt = null,
  }) {
    return _then(_$ChatListItemResponseImpl(
      opponent: null == opponent
          ? _value.opponent
          : opponent // ignore: cast_nullable_to_non_nullable
              as OpponentResponse,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatListItemResponseImpl implements _ChatListItemResponse {
  const _$ChatListItemResponseImpl(
      {@JsonKey(name: 'opponent') required this.opponent,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'created_at') required this.createdAt});

  factory _$ChatListItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatListItemResponseImplFromJson(json);

  @override
  @JsonKey(name: 'opponent')
  final OpponentResponse opponent;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'ChatListItemResponse(opponent: $opponent, message: $message, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatListItemResponseImpl &&
            (identical(other.opponent, opponent) ||
                other.opponent == opponent) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, opponent, message, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatListItemResponseImplCopyWith<_$ChatListItemResponseImpl>
      get copyWith =>
          __$$ChatListItemResponseImplCopyWithImpl<_$ChatListItemResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatListItemResponseImplToJson(
      this,
    );
  }
}

abstract class _ChatListItemResponse implements ChatListItemResponse {
  const factory _ChatListItemResponse(
          {@JsonKey(name: 'opponent') required final OpponentResponse opponent,
          @JsonKey(name: 'message') required final String message,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$ChatListItemResponseImpl;

  factory _ChatListItemResponse.fromJson(Map<String, dynamic> json) =
      _$ChatListItemResponseImpl.fromJson;

  @override
  @JsonKey(name: 'opponent')
  OpponentResponse get opponent;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ChatListItemResponseImplCopyWith<_$ChatListItemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
