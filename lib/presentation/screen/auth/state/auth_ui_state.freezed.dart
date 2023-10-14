// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthUiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() anonymous,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? anonymous,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnonymousState value) anonymous,
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnonymousState value)? anonymous,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnonymousState value)? anonymous,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUiStateCopyWith<$Res> {
  factory $AuthUiStateCopyWith(
          AuthUiState value, $Res Function(AuthUiState) then) =
      _$AuthUiStateCopyWithImpl<$Res, AuthUiState>;
}

/// @nodoc
class _$AuthUiStateCopyWithImpl<$Res, $Val extends AuthUiState>
    implements $AuthUiStateCopyWith<$Res> {
  _$AuthUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AnonymousStateImplCopyWith<$Res> {
  factory _$$AnonymousStateImplCopyWith(_$AnonymousStateImpl value,
          $Res Function(_$AnonymousStateImpl) then) =
      __$$AnonymousStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnonymousStateImplCopyWithImpl<$Res>
    extends _$AuthUiStateCopyWithImpl<$Res, _$AnonymousStateImpl>
    implements _$$AnonymousStateImplCopyWith<$Res> {
  __$$AnonymousStateImplCopyWithImpl(
      _$AnonymousStateImpl _value, $Res Function(_$AnonymousStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AnonymousStateImpl implements AnonymousState {
  const _$AnonymousStateImpl();

  @override
  String toString() {
    return 'AuthUiState.anonymous()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AnonymousStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() anonymous,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function(String message) error,
  }) {
    return anonymous();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? anonymous,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function(String message)? error,
  }) {
    return anonymous?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (anonymous != null) {
      return anonymous();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnonymousState value) anonymous,
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(ErrorState value) error,
  }) {
    return anonymous(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnonymousState value)? anonymous,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(ErrorState value)? error,
  }) {
    return anonymous?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnonymousState value)? anonymous,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (anonymous != null) {
      return anonymous(this);
    }
    return orElse();
  }
}

abstract class AnonymousState implements AuthUiState {
  const factory AnonymousState() = _$AnonymousStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$AuthUiStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'AuthUiState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() anonymous,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? anonymous,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnonymousState value) anonymous,
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnonymousState value)? anonymous,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnonymousState value)? anonymous,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements AuthUiState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$AuthenticatedStateImplCopyWith<$Res> {
  factory _$$AuthenticatedStateImplCopyWith(_$AuthenticatedStateImpl value,
          $Res Function(_$AuthenticatedStateImpl) then) =
      __$$AuthenticatedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedStateImplCopyWithImpl<$Res>
    extends _$AuthUiStateCopyWithImpl<$Res, _$AuthenticatedStateImpl>
    implements _$$AuthenticatedStateImplCopyWith<$Res> {
  __$$AuthenticatedStateImplCopyWithImpl(_$AuthenticatedStateImpl _value,
      $Res Function(_$AuthenticatedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticatedStateImpl implements AuthenticatedState {
  const _$AuthenticatedStateImpl();

  @override
  String toString() {
    return 'AuthUiState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticatedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() anonymous,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function(String message) error,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? anonymous,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function(String message)? error,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnonymousState value) anonymous,
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(ErrorState value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnonymousState value)? anonymous,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(ErrorState value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnonymousState value)? anonymous,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedState implements AuthUiState {
  const factory AuthenticatedState() = _$AuthenticatedStateImpl;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$AuthUiStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthUiState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() anonymous,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? anonymous,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? anonymous,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AnonymousState value) anonymous,
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnonymousState value)? anonymous,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnonymousState value)? anonymous,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements AuthUiState {
  const factory ErrorState(final String message) = _$ErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
