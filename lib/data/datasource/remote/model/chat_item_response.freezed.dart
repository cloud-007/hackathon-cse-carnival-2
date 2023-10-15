// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatItemResponse _$ChatItemResponseFromJson(Map<String, dynamic> json) {
  return _ChatItemResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatItemResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender')
  int get sender => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiver')
  int get receiver => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_mine')
  bool get isMine => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'modified_at')
  DateTime get modifiedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatItemResponseCopyWith<ChatItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatItemResponseCopyWith<$Res> {
  factory $ChatItemResponseCopyWith(
          ChatItemResponse value, $Res Function(ChatItemResponse) then) =
      _$ChatItemResponseCopyWithImpl<$Res, ChatItemResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'sender') int sender,
      @JsonKey(name: 'receiver') int receiver,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'is_mine') bool isMine,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'modified_at') DateTime modifiedAt});
}

/// @nodoc
class _$ChatItemResponseCopyWithImpl<$Res, $Val extends ChatItemResponse>
    implements $ChatItemResponseCopyWith<$Res> {
  _$ChatItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sender = null,
    Object? receiver = null,
    Object? message = null,
    Object? isMine = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as int,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isMine: null == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatItemResponseImplCopyWith<$Res>
    implements $ChatItemResponseCopyWith<$Res> {
  factory _$$ChatItemResponseImplCopyWith(_$ChatItemResponseImpl value,
          $Res Function(_$ChatItemResponseImpl) then) =
      __$$ChatItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'sender') int sender,
      @JsonKey(name: 'receiver') int receiver,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'is_mine') bool isMine,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'modified_at') DateTime modifiedAt});
}

/// @nodoc
class __$$ChatItemResponseImplCopyWithImpl<$Res>
    extends _$ChatItemResponseCopyWithImpl<$Res, _$ChatItemResponseImpl>
    implements _$$ChatItemResponseImplCopyWith<$Res> {
  __$$ChatItemResponseImplCopyWithImpl(_$ChatItemResponseImpl _value,
      $Res Function(_$ChatItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sender = null,
    Object? receiver = null,
    Object? message = null,
    Object? isMine = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
  }) {
    return _then(_$ChatItemResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as int,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isMine: null == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatItemResponseImpl implements _ChatItemResponse {
  const _$ChatItemResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'sender') required this.sender,
      @JsonKey(name: 'receiver') required this.receiver,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'is_mine') required this.isMine,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'modified_at') required this.modifiedAt});

  factory _$ChatItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatItemResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'sender')
  final int sender;
  @override
  @JsonKey(name: 'receiver')
  final int receiver;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'is_mine')
  final bool isMine;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'modified_at')
  final DateTime modifiedAt;

  @override
  String toString() {
    return 'ChatItemResponse(id: $id, sender: $sender, receiver: $receiver, message: $message, isMine: $isMine, createdAt: $createdAt, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatItemResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isMine, isMine) || other.isMine == isMine) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, sender, receiver, message,
      isMine, createdAt, modifiedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatItemResponseImplCopyWith<_$ChatItemResponseImpl> get copyWith =>
      __$$ChatItemResponseImplCopyWithImpl<_$ChatItemResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatItemResponseImplToJson(
      this,
    );
  }
}

abstract class _ChatItemResponse implements ChatItemResponse {
  const factory _ChatItemResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'sender') required final int sender,
          @JsonKey(name: 'receiver') required final int receiver,
          @JsonKey(name: 'message') required final String message,
          @JsonKey(name: 'is_mine') required final bool isMine,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'modified_at') required final DateTime modifiedAt}) =
      _$ChatItemResponseImpl;

  factory _ChatItemResponse.fromJson(Map<String, dynamic> json) =
      _$ChatItemResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'sender')
  int get sender;
  @override
  @JsonKey(name: 'receiver')
  int get receiver;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'is_mine')
  bool get isMine;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'modified_at')
  DateTime get modifiedAt;
  @override
  @JsonKey(ignore: true)
  _$$ChatItemResponseImplCopyWith<_$ChatItemResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
