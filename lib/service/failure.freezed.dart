// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirestoreFailure firestoreFailure)
        firestoreFailure,
    required TResult Function(AuthFailure authFailure) authFailure,
    required TResult Function() timedOut,
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function(String errorMsg) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FirestoreFailure firestoreFailure)? firestoreFailure,
    TResult? Function(AuthFailure authFailure)? authFailure,
    TResult? Function()? timedOut,
    TResult? Function()? networkError,
    TResult? Function()? serverError,
    TResult? Function(String errorMsg)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirestoreFailure firestoreFailure)? firestoreFailure,
    TResult Function(AuthFailure authFailure)? authFailure,
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirestoreFailure value) firestoreFailure,
    required TResult Function(_AuthFailure value) authFailure,
    required TResult Function(_TimedOut value) timedOut,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirestoreFailure value)? firestoreFailure,
    TResult? Function(_AuthFailure value)? authFailure,
    TResult? Function(_TimedOut value)? timedOut,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Unexpected value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirestoreFailure value)? firestoreFailure,
    TResult Function(_AuthFailure value)? authFailure,
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FirestoreFailureCopyWith<$Res> {
  factory _$$_FirestoreFailureCopyWith(
          _$_FirestoreFailure value, $Res Function(_$_FirestoreFailure) then) =
      __$$_FirestoreFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({FirestoreFailure firestoreFailure});

  $FirestoreFailureCopyWith<$Res> get firestoreFailure;
}

/// @nodoc
class __$$_FirestoreFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_FirestoreFailure>
    implements _$$_FirestoreFailureCopyWith<$Res> {
  __$$_FirestoreFailureCopyWithImpl(
      _$_FirestoreFailure _value, $Res Function(_$_FirestoreFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firestoreFailure = null,
  }) {
    return _then(_$_FirestoreFailure(
      null == firestoreFailure
          ? _value.firestoreFailure
          : firestoreFailure // ignore: cast_nullable_to_non_nullable
              as FirestoreFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FirestoreFailureCopyWith<$Res> get firestoreFailure {
    return $FirestoreFailureCopyWith<$Res>(_value.firestoreFailure, (value) {
      return _then(_value.copyWith(firestoreFailure: value));
    });
  }
}

/// @nodoc

class _$_FirestoreFailure implements _FirestoreFailure {
  const _$_FirestoreFailure(this.firestoreFailure);

  @override
  final FirestoreFailure firestoreFailure;

  @override
  String toString() {
    return 'Failure.firestoreFailure(firestoreFailure: $firestoreFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirestoreFailure &&
            (identical(other.firestoreFailure, firestoreFailure) ||
                other.firestoreFailure == firestoreFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firestoreFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirestoreFailureCopyWith<_$_FirestoreFailure> get copyWith =>
      __$$_FirestoreFailureCopyWithImpl<_$_FirestoreFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirestoreFailure firestoreFailure)
        firestoreFailure,
    required TResult Function(AuthFailure authFailure) authFailure,
    required TResult Function() timedOut,
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function(String errorMsg) unexpected,
  }) {
    return firestoreFailure(this.firestoreFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FirestoreFailure firestoreFailure)? firestoreFailure,
    TResult? Function(AuthFailure authFailure)? authFailure,
    TResult? Function()? timedOut,
    TResult? Function()? networkError,
    TResult? Function()? serverError,
    TResult? Function(String errorMsg)? unexpected,
  }) {
    return firestoreFailure?.call(this.firestoreFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirestoreFailure firestoreFailure)? firestoreFailure,
    TResult Function(AuthFailure authFailure)? authFailure,
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    required TResult orElse(),
  }) {
    if (firestoreFailure != null) {
      return firestoreFailure(this.firestoreFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirestoreFailure value) firestoreFailure,
    required TResult Function(_AuthFailure value) authFailure,
    required TResult Function(_TimedOut value) timedOut,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return firestoreFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirestoreFailure value)? firestoreFailure,
    TResult? Function(_AuthFailure value)? authFailure,
    TResult? Function(_TimedOut value)? timedOut,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return firestoreFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirestoreFailure value)? firestoreFailure,
    TResult Function(_AuthFailure value)? authFailure,
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (firestoreFailure != null) {
      return firestoreFailure(this);
    }
    return orElse();
  }
}

abstract class _FirestoreFailure implements Failure {
  const factory _FirestoreFailure(final FirestoreFailure firestoreFailure) =
      _$_FirestoreFailure;

  FirestoreFailure get firestoreFailure;
  @JsonKey(ignore: true)
  _$$_FirestoreFailureCopyWith<_$_FirestoreFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthFailureCopyWith<$Res> {
  factory _$$_AuthFailureCopyWith(
          _$_AuthFailure value, $Res Function(_$_AuthFailure) then) =
      __$$_AuthFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthFailure authFailure});

  $AuthFailureCopyWith<$Res> get authFailure;
}

/// @nodoc
class __$$_AuthFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_AuthFailure>
    implements _$$_AuthFailureCopyWith<$Res> {
  __$$_AuthFailureCopyWithImpl(
      _$_AuthFailure _value, $Res Function(_$_AuthFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authFailure = null,
  }) {
    return _then(_$_AuthFailure(
      null == authFailure
          ? _value.authFailure
          : authFailure // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFailureCopyWith<$Res> get authFailure {
    return $AuthFailureCopyWith<$Res>(_value.authFailure, (value) {
      return _then(_value.copyWith(authFailure: value));
    });
  }
}

/// @nodoc

class _$_AuthFailure implements _AuthFailure {
  const _$_AuthFailure(this.authFailure);

  @override
  final AuthFailure authFailure;

  @override
  String toString() {
    return 'Failure.authFailure(authFailure: $authFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthFailure &&
            (identical(other.authFailure, authFailure) ||
                other.authFailure == authFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthFailureCopyWith<_$_AuthFailure> get copyWith =>
      __$$_AuthFailureCopyWithImpl<_$_AuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirestoreFailure firestoreFailure)
        firestoreFailure,
    required TResult Function(AuthFailure authFailure) authFailure,
    required TResult Function() timedOut,
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function(String errorMsg) unexpected,
  }) {
    return authFailure(this.authFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FirestoreFailure firestoreFailure)? firestoreFailure,
    TResult? Function(AuthFailure authFailure)? authFailure,
    TResult? Function()? timedOut,
    TResult? Function()? networkError,
    TResult? Function()? serverError,
    TResult? Function(String errorMsg)? unexpected,
  }) {
    return authFailure?.call(this.authFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirestoreFailure firestoreFailure)? firestoreFailure,
    TResult Function(AuthFailure authFailure)? authFailure,
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(this.authFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirestoreFailure value) firestoreFailure,
    required TResult Function(_AuthFailure value) authFailure,
    required TResult Function(_TimedOut value) timedOut,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return authFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirestoreFailure value)? firestoreFailure,
    TResult? Function(_AuthFailure value)? authFailure,
    TResult? Function(_TimedOut value)? timedOut,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return authFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirestoreFailure value)? firestoreFailure,
    TResult Function(_AuthFailure value)? authFailure,
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(this);
    }
    return orElse();
  }
}

abstract class _AuthFailure implements Failure {
  const factory _AuthFailure(final AuthFailure authFailure) = _$_AuthFailure;

  AuthFailure get authFailure;
  @JsonKey(ignore: true)
  _$$_AuthFailureCopyWith<_$_AuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimedOutCopyWith<$Res> {
  factory _$$_TimedOutCopyWith(
          _$_TimedOut value, $Res Function(_$_TimedOut) then) =
      __$$_TimedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TimedOutCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_TimedOut>
    implements _$$_TimedOutCopyWith<$Res> {
  __$$_TimedOutCopyWithImpl(
      _$_TimedOut _value, $Res Function(_$_TimedOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TimedOut implements _TimedOut {
  const _$_TimedOut();

  @override
  String toString() {
    return 'Failure.timedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TimedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirestoreFailure firestoreFailure)
        firestoreFailure,
    required TResult Function(AuthFailure authFailure) authFailure,
    required TResult Function() timedOut,
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function(String errorMsg) unexpected,
  }) {
    return timedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FirestoreFailure firestoreFailure)? firestoreFailure,
    TResult? Function(AuthFailure authFailure)? authFailure,
    TResult? Function()? timedOut,
    TResult? Function()? networkError,
    TResult? Function()? serverError,
    TResult? Function(String errorMsg)? unexpected,
  }) {
    return timedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirestoreFailure firestoreFailure)? firestoreFailure,
    TResult Function(AuthFailure authFailure)? authFailure,
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    required TResult orElse(),
  }) {
    if (timedOut != null) {
      return timedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirestoreFailure value) firestoreFailure,
    required TResult Function(_AuthFailure value) authFailure,
    required TResult Function(_TimedOut value) timedOut,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return timedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirestoreFailure value)? firestoreFailure,
    TResult? Function(_AuthFailure value)? authFailure,
    TResult? Function(_TimedOut value)? timedOut,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return timedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirestoreFailure value)? firestoreFailure,
    TResult Function(_AuthFailure value)? authFailure,
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (timedOut != null) {
      return timedOut(this);
    }
    return orElse();
  }
}

abstract class _TimedOut implements Failure {
  const factory _TimedOut() = _$_TimedOut;
}

/// @nodoc
abstract class _$$_NetworkErrorCopyWith<$Res> {
  factory _$$_NetworkErrorCopyWith(
          _$_NetworkError value, $Res Function(_$_NetworkError) then) =
      __$$_NetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NetworkErrorCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_NetworkError>
    implements _$$_NetworkErrorCopyWith<$Res> {
  __$$_NetworkErrorCopyWithImpl(
      _$_NetworkError _value, $Res Function(_$_NetworkError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NetworkError implements _NetworkError {
  const _$_NetworkError();

  @override
  String toString() {
    return 'Failure.networkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NetworkError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirestoreFailure firestoreFailure)
        firestoreFailure,
    required TResult Function(AuthFailure authFailure) authFailure,
    required TResult Function() timedOut,
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function(String errorMsg) unexpected,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FirestoreFailure firestoreFailure)? firestoreFailure,
    TResult? Function(AuthFailure authFailure)? authFailure,
    TResult? Function()? timedOut,
    TResult? Function()? networkError,
    TResult? Function()? serverError,
    TResult? Function(String errorMsg)? unexpected,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirestoreFailure firestoreFailure)? firestoreFailure,
    TResult Function(AuthFailure authFailure)? authFailure,
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirestoreFailure value) firestoreFailure,
    required TResult Function(_AuthFailure value) authFailure,
    required TResult Function(_TimedOut value) timedOut,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirestoreFailure value)? firestoreFailure,
    TResult? Function(_AuthFailure value)? authFailure,
    TResult? Function(_TimedOut value)? timedOut,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirestoreFailure value)? firestoreFailure,
    TResult Function(_AuthFailure value)? authFailure,
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _NetworkError implements Failure {
  const factory _NetworkError() = _$_NetworkError;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_ServerError>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'Failure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirestoreFailure firestoreFailure)
        firestoreFailure,
    required TResult Function(AuthFailure authFailure) authFailure,
    required TResult Function() timedOut,
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function(String errorMsg) unexpected,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FirestoreFailure firestoreFailure)? firestoreFailure,
    TResult? Function(AuthFailure authFailure)? authFailure,
    TResult? Function()? timedOut,
    TResult? Function()? networkError,
    TResult? Function()? serverError,
    TResult? Function(String errorMsg)? unexpected,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirestoreFailure firestoreFailure)? firestoreFailure,
    TResult Function(AuthFailure authFailure)? authFailure,
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirestoreFailure value) firestoreFailure,
    required TResult Function(_AuthFailure value) authFailure,
    required TResult Function(_TimedOut value) timedOut,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirestoreFailure value)? firestoreFailure,
    TResult? Function(_AuthFailure value)? authFailure,
    TResult? Function(_TimedOut value)? timedOut,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirestoreFailure value)? firestoreFailure,
    TResult Function(_AuthFailure value)? authFailure,
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements Failure {
  const factory _ServerError() = _$_ServerError;
}

/// @nodoc
abstract class _$$_UnexpectedCopyWith<$Res> {
  factory _$$_UnexpectedCopyWith(
          _$_Unexpected value, $Res Function(_$_Unexpected) then) =
      __$$_UnexpectedCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$_UnexpectedCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_Unexpected>
    implements _$$_UnexpectedCopyWith<$Res> {
  __$$_UnexpectedCopyWithImpl(
      _$_Unexpected _value, $Res Function(_$_Unexpected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$_Unexpected(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'Failure.unexpected(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unexpected &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnexpectedCopyWith<_$_Unexpected> get copyWith =>
      __$$_UnexpectedCopyWithImpl<_$_Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirestoreFailure firestoreFailure)
        firestoreFailure,
    required TResult Function(AuthFailure authFailure) authFailure,
    required TResult Function() timedOut,
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function(String errorMsg) unexpected,
  }) {
    return unexpected(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FirestoreFailure firestoreFailure)? firestoreFailure,
    TResult? Function(AuthFailure authFailure)? authFailure,
    TResult? Function()? timedOut,
    TResult? Function()? networkError,
    TResult? Function()? serverError,
    TResult? Function(String errorMsg)? unexpected,
  }) {
    return unexpected?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirestoreFailure firestoreFailure)? firestoreFailure,
    TResult Function(AuthFailure authFailure)? authFailure,
    TResult Function()? timedOut,
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function(String errorMsg)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirestoreFailure value) firestoreFailure,
    required TResult Function(_AuthFailure value) authFailure,
    required TResult Function(_TimedOut value) timedOut,
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirestoreFailure value)? firestoreFailure,
    TResult? Function(_AuthFailure value)? authFailure,
    TResult? Function(_TimedOut value)? timedOut,
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirestoreFailure value)? firestoreFailure,
    TResult Function(_AuthFailure value)? authFailure,
    TResult Function(_TimedOut value)? timedOut,
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements Failure {
  const factory _Unexpected({required final String errorMsg}) = _$_Unexpected;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$_UnexpectedCopyWith<_$_Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FirestoreFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() insufficientPermission,
    required TResult Function() alreadyCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? insufficientPermission,
    TResult? Function()? alreadyCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? insufficientPermission,
    TResult Function()? alreadyCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_AlreadyCompleted value) alreadyCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InsufficientPermission value)? insufficientPermission,
    TResult? Function(_AlreadyCompleted value)? alreadyCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_AlreadyCompleted value)? alreadyCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreFailureCopyWith<$Res> {
  factory $FirestoreFailureCopyWith(
          FirestoreFailure value, $Res Function(FirestoreFailure) then) =
      _$FirestoreFailureCopyWithImpl<$Res, FirestoreFailure>;
}

/// @nodoc
class _$FirestoreFailureCopyWithImpl<$Res, $Val extends FirestoreFailure>
    implements $FirestoreFailureCopyWith<$Res> {
  _$FirestoreFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InsufficientPermissionCopyWith<$Res> {
  factory _$$_InsufficientPermissionCopyWith(_$_InsufficientPermission value,
          $Res Function(_$_InsufficientPermission) then) =
      __$$_InsufficientPermissionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InsufficientPermissionCopyWithImpl<$Res>
    extends _$FirestoreFailureCopyWithImpl<$Res, _$_InsufficientPermission>
    implements _$$_InsufficientPermissionCopyWith<$Res> {
  __$$_InsufficientPermissionCopyWithImpl(_$_InsufficientPermission _value,
      $Res Function(_$_InsufficientPermission) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InsufficientPermission implements _InsufficientPermission {
  const _$_InsufficientPermission();

  @override
  String toString() {
    return 'FirestoreFailure.insufficientPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsufficientPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() insufficientPermission,
    required TResult Function() alreadyCompleted,
  }) {
    return insufficientPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? insufficientPermission,
    TResult? Function()? alreadyCompleted,
  }) {
    return insufficientPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? insufficientPermission,
    TResult Function()? alreadyCompleted,
    required TResult orElse(),
  }) {
    if (insufficientPermission != null) {
      return insufficientPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_AlreadyCompleted value) alreadyCompleted,
  }) {
    return insufficientPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InsufficientPermission value)? insufficientPermission,
    TResult? Function(_AlreadyCompleted value)? alreadyCompleted,
  }) {
    return insufficientPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_AlreadyCompleted value)? alreadyCompleted,
    required TResult orElse(),
  }) {
    if (insufficientPermission != null) {
      return insufficientPermission(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermission implements FirestoreFailure {
  const factory _InsufficientPermission() = _$_InsufficientPermission;
}

/// @nodoc
abstract class _$$_AlreadyCompletedCopyWith<$Res> {
  factory _$$_AlreadyCompletedCopyWith(
          _$_AlreadyCompleted value, $Res Function(_$_AlreadyCompleted) then) =
      __$$_AlreadyCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AlreadyCompletedCopyWithImpl<$Res>
    extends _$FirestoreFailureCopyWithImpl<$Res, _$_AlreadyCompleted>
    implements _$$_AlreadyCompletedCopyWith<$Res> {
  __$$_AlreadyCompletedCopyWithImpl(
      _$_AlreadyCompleted _value, $Res Function(_$_AlreadyCompleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AlreadyCompleted implements _AlreadyCompleted {
  const _$_AlreadyCompleted();

  @override
  String toString() {
    return 'FirestoreFailure.alreadyCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AlreadyCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() insufficientPermission,
    required TResult Function() alreadyCompleted,
  }) {
    return alreadyCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? insufficientPermission,
    TResult? Function()? alreadyCompleted,
  }) {
    return alreadyCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? insufficientPermission,
    TResult Function()? alreadyCompleted,
    required TResult orElse(),
  }) {
    if (alreadyCompleted != null) {
      return alreadyCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_AlreadyCompleted value) alreadyCompleted,
  }) {
    return alreadyCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InsufficientPermission value)? insufficientPermission,
    TResult? Function(_AlreadyCompleted value)? alreadyCompleted,
  }) {
    return alreadyCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_AlreadyCompleted value)? alreadyCompleted,
    required TResult orElse(),
  }) {
    if (alreadyCompleted != null) {
      return alreadyCompleted(this);
    }
    return orElse();
  }
}

abstract class _AlreadyCompleted implements FirestoreFailure {
  const factory _AlreadyCompleted() = _$_AlreadyCompleted;
}

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() invalidCredential,
    required TResult Function() accountExistWithDifferentCredential,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalidOtp,
    required TResult Function() sessionExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? invalidCredential,
    TResult? Function()? accountExistWithDifferentCredential,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidPhoneNumber,
    TResult? Function()? invalidOtp,
    TResult? Function()? sessionExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? invalidCredential,
    TResult Function()? accountExistWithDifferentCredential,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalidOtp,
    TResult Function()? sessionExpired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_InvalidCredential value) invalidCredential,
    required TResult Function(_AccountExistWithDifferentCredential value)
        accountExistWithDifferentCredential,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidOtp value) invalidOtp,
    required TResult Function(_SessionExpired value) sessionExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CancelledByUser value)? cancelledByUser,
    TResult? Function(_InvalidCredential value)? invalidCredential,
    TResult? Function(_AccountExistWithDifferentCredential value)?
        accountExistWithDifferentCredential,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult? Function(_InvalidOtp value)? invalidOtp,
    TResult? Function(_SessionExpired value)? sessionExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_InvalidCredential value)? invalidCredential,
    TResult Function(_AccountExistWithDifferentCredential value)?
        accountExistWithDifferentCredential,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidOtp value)? invalidOtp,
    TResult Function(_SessionExpired value)? sessionExpired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CancelledByUserCopyWith<$Res> {
  factory _$$_CancelledByUserCopyWith(
          _$_CancelledByUser value, $Res Function(_$_CancelledByUser) then) =
      __$$_CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$_CancelledByUser>
    implements _$$_CancelledByUserCopyWith<$Res> {
  __$$_CancelledByUserCopyWithImpl(
      _$_CancelledByUser _value, $Res Function(_$_CancelledByUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CancelledByUser implements _CancelledByUser {
  const _$_CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() invalidCredential,
    required TResult Function() accountExistWithDifferentCredential,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalidOtp,
    required TResult Function() sessionExpired,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? invalidCredential,
    TResult? Function()? accountExistWithDifferentCredential,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidPhoneNumber,
    TResult? Function()? invalidOtp,
    TResult? Function()? sessionExpired,
  }) {
    return cancelledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? invalidCredential,
    TResult Function()? accountExistWithDifferentCredential,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalidOtp,
    TResult Function()? sessionExpired,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_InvalidCredential value) invalidCredential,
    required TResult Function(_AccountExistWithDifferentCredential value)
        accountExistWithDifferentCredential,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidOtp value) invalidOtp,
    required TResult Function(_SessionExpired value) sessionExpired,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CancelledByUser value)? cancelledByUser,
    TResult? Function(_InvalidCredential value)? invalidCredential,
    TResult? Function(_AccountExistWithDifferentCredential value)?
        accountExistWithDifferentCredential,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult? Function(_InvalidOtp value)? invalidOtp,
    TResult? Function(_SessionExpired value)? sessionExpired,
  }) {
    return cancelledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_InvalidCredential value)? invalidCredential,
    TResult Function(_AccountExistWithDifferentCredential value)?
        accountExistWithDifferentCredential,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidOtp value)? invalidOtp,
    TResult Function(_SessionExpired value)? sessionExpired,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class _CancelledByUser implements AuthFailure {
  const factory _CancelledByUser() = _$_CancelledByUser;
}

/// @nodoc
abstract class _$$_InvalidCredentialCopyWith<$Res> {
  factory _$$_InvalidCredentialCopyWith(_$_InvalidCredential value,
          $Res Function(_$_InvalidCredential) then) =
      __$$_InvalidCredentialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidCredentialCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$_InvalidCredential>
    implements _$$_InvalidCredentialCopyWith<$Res> {
  __$$_InvalidCredentialCopyWithImpl(
      _$_InvalidCredential _value, $Res Function(_$_InvalidCredential) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InvalidCredential implements _InvalidCredential {
  const _$_InvalidCredential();

  @override
  String toString() {
    return 'AuthFailure.invalidCredential()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidCredential);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() invalidCredential,
    required TResult Function() accountExistWithDifferentCredential,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalidOtp,
    required TResult Function() sessionExpired,
  }) {
    return invalidCredential();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? invalidCredential,
    TResult? Function()? accountExistWithDifferentCredential,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidPhoneNumber,
    TResult? Function()? invalidOtp,
    TResult? Function()? sessionExpired,
  }) {
    return invalidCredential?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? invalidCredential,
    TResult Function()? accountExistWithDifferentCredential,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalidOtp,
    TResult Function()? sessionExpired,
    required TResult orElse(),
  }) {
    if (invalidCredential != null) {
      return invalidCredential();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_InvalidCredential value) invalidCredential,
    required TResult Function(_AccountExistWithDifferentCredential value)
        accountExistWithDifferentCredential,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidOtp value) invalidOtp,
    required TResult Function(_SessionExpired value) sessionExpired,
  }) {
    return invalidCredential(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CancelledByUser value)? cancelledByUser,
    TResult? Function(_InvalidCredential value)? invalidCredential,
    TResult? Function(_AccountExistWithDifferentCredential value)?
        accountExistWithDifferentCredential,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult? Function(_InvalidOtp value)? invalidOtp,
    TResult? Function(_SessionExpired value)? sessionExpired,
  }) {
    return invalidCredential?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_InvalidCredential value)? invalidCredential,
    TResult Function(_AccountExistWithDifferentCredential value)?
        accountExistWithDifferentCredential,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidOtp value)? invalidOtp,
    TResult Function(_SessionExpired value)? sessionExpired,
    required TResult orElse(),
  }) {
    if (invalidCredential != null) {
      return invalidCredential(this);
    }
    return orElse();
  }
}

abstract class _InvalidCredential implements AuthFailure {
  const factory _InvalidCredential() = _$_InvalidCredential;
}

/// @nodoc
abstract class _$$_AccountExistWithDifferentCredentialCopyWith<$Res> {
  factory _$$_AccountExistWithDifferentCredentialCopyWith(
          _$_AccountExistWithDifferentCredential value,
          $Res Function(_$_AccountExistWithDifferentCredential) then) =
      __$$_AccountExistWithDifferentCredentialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccountExistWithDifferentCredentialCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res,
        _$_AccountExistWithDifferentCredential>
    implements _$$_AccountExistWithDifferentCredentialCopyWith<$Res> {
  __$$_AccountExistWithDifferentCredentialCopyWithImpl(
      _$_AccountExistWithDifferentCredential _value,
      $Res Function(_$_AccountExistWithDifferentCredential) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccountExistWithDifferentCredential
    implements _AccountExistWithDifferentCredential {
  const _$_AccountExistWithDifferentCredential();

  @override
  String toString() {
    return 'AuthFailure.accountExistWithDifferentCredential()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountExistWithDifferentCredential);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() invalidCredential,
    required TResult Function() accountExistWithDifferentCredential,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalidOtp,
    required TResult Function() sessionExpired,
  }) {
    return accountExistWithDifferentCredential();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? invalidCredential,
    TResult? Function()? accountExistWithDifferentCredential,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidPhoneNumber,
    TResult? Function()? invalidOtp,
    TResult? Function()? sessionExpired,
  }) {
    return accountExistWithDifferentCredential?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? invalidCredential,
    TResult Function()? accountExistWithDifferentCredential,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalidOtp,
    TResult Function()? sessionExpired,
    required TResult orElse(),
  }) {
    if (accountExistWithDifferentCredential != null) {
      return accountExistWithDifferentCredential();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_InvalidCredential value) invalidCredential,
    required TResult Function(_AccountExistWithDifferentCredential value)
        accountExistWithDifferentCredential,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidOtp value) invalidOtp,
    required TResult Function(_SessionExpired value) sessionExpired,
  }) {
    return accountExistWithDifferentCredential(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CancelledByUser value)? cancelledByUser,
    TResult? Function(_InvalidCredential value)? invalidCredential,
    TResult? Function(_AccountExistWithDifferentCredential value)?
        accountExistWithDifferentCredential,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult? Function(_InvalidOtp value)? invalidOtp,
    TResult? Function(_SessionExpired value)? sessionExpired,
  }) {
    return accountExistWithDifferentCredential?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_InvalidCredential value)? invalidCredential,
    TResult Function(_AccountExistWithDifferentCredential value)?
        accountExistWithDifferentCredential,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidOtp value)? invalidOtp,
    TResult Function(_SessionExpired value)? sessionExpired,
    required TResult orElse(),
  }) {
    if (accountExistWithDifferentCredential != null) {
      return accountExistWithDifferentCredential(this);
    }
    return orElse();
  }
}

abstract class _AccountExistWithDifferentCredential implements AuthFailure {
  const factory _AccountExistWithDifferentCredential() =
      _$_AccountExistWithDifferentCredential;
}

/// @nodoc
abstract class _$$_EmailAlreadyInUseCopyWith<$Res> {
  factory _$$_EmailAlreadyInUseCopyWith(_$_EmailAlreadyInUse value,
          $Res Function(_$_EmailAlreadyInUse) then) =
      __$$_EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$_EmailAlreadyInUse>
    implements _$$_EmailAlreadyInUseCopyWith<$Res> {
  __$$_EmailAlreadyInUseCopyWithImpl(
      _$_EmailAlreadyInUse _value, $Res Function(_$_EmailAlreadyInUse) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EmailAlreadyInUse implements _EmailAlreadyInUse {
  const _$_EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() invalidCredential,
    required TResult Function() accountExistWithDifferentCredential,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalidOtp,
    required TResult Function() sessionExpired,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? invalidCredential,
    TResult? Function()? accountExistWithDifferentCredential,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidPhoneNumber,
    TResult? Function()? invalidOtp,
    TResult? Function()? sessionExpired,
  }) {
    return emailAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? invalidCredential,
    TResult Function()? accountExistWithDifferentCredential,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalidOtp,
    TResult Function()? sessionExpired,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_InvalidCredential value) invalidCredential,
    required TResult Function(_AccountExistWithDifferentCredential value)
        accountExistWithDifferentCredential,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidOtp value) invalidOtp,
    required TResult Function(_SessionExpired value) sessionExpired,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CancelledByUser value)? cancelledByUser,
    TResult? Function(_InvalidCredential value)? invalidCredential,
    TResult? Function(_AccountExistWithDifferentCredential value)?
        accountExistWithDifferentCredential,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult? Function(_InvalidOtp value)? invalidOtp,
    TResult? Function(_SessionExpired value)? sessionExpired,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_InvalidCredential value)? invalidCredential,
    TResult Function(_AccountExistWithDifferentCredential value)?
        accountExistWithDifferentCredential,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidOtp value)? invalidOtp,
    TResult Function(_SessionExpired value)? sessionExpired,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class _EmailAlreadyInUse implements AuthFailure {
  const factory _EmailAlreadyInUse() = _$_EmailAlreadyInUse;
}

/// @nodoc
abstract class _$$_InvalidPhoneNumberCopyWith<$Res> {
  factory _$$_InvalidPhoneNumberCopyWith(_$_InvalidPhoneNumber value,
          $Res Function(_$_InvalidPhoneNumber) then) =
      __$$_InvalidPhoneNumberCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidPhoneNumberCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$_InvalidPhoneNumber>
    implements _$$_InvalidPhoneNumberCopyWith<$Res> {
  __$$_InvalidPhoneNumberCopyWithImpl(
      _$_InvalidPhoneNumber _value, $Res Function(_$_InvalidPhoneNumber) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InvalidPhoneNumber implements _InvalidPhoneNumber {
  const _$_InvalidPhoneNumber();

  @override
  String toString() {
    return 'AuthFailure.invalidPhoneNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidPhoneNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() invalidCredential,
    required TResult Function() accountExistWithDifferentCredential,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalidOtp,
    required TResult Function() sessionExpired,
  }) {
    return invalidPhoneNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? invalidCredential,
    TResult? Function()? accountExistWithDifferentCredential,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidPhoneNumber,
    TResult? Function()? invalidOtp,
    TResult? Function()? sessionExpired,
  }) {
    return invalidPhoneNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? invalidCredential,
    TResult Function()? accountExistWithDifferentCredential,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalidOtp,
    TResult Function()? sessionExpired,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_InvalidCredential value) invalidCredential,
    required TResult Function(_AccountExistWithDifferentCredential value)
        accountExistWithDifferentCredential,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidOtp value) invalidOtp,
    required TResult Function(_SessionExpired value) sessionExpired,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CancelledByUser value)? cancelledByUser,
    TResult? Function(_InvalidCredential value)? invalidCredential,
    TResult? Function(_AccountExistWithDifferentCredential value)?
        accountExistWithDifferentCredential,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult? Function(_InvalidOtp value)? invalidOtp,
    TResult? Function(_SessionExpired value)? sessionExpired,
  }) {
    return invalidPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_InvalidCredential value)? invalidCredential,
    TResult Function(_AccountExistWithDifferentCredential value)?
        accountExistWithDifferentCredential,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidOtp value)? invalidOtp,
    TResult Function(_SessionExpired value)? sessionExpired,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _InvalidPhoneNumber implements AuthFailure {
  const factory _InvalidPhoneNumber() = _$_InvalidPhoneNumber;
}

/// @nodoc
abstract class _$$_InvalidOtpCopyWith<$Res> {
  factory _$$_InvalidOtpCopyWith(
          _$_InvalidOtp value, $Res Function(_$_InvalidOtp) then) =
      __$$_InvalidOtpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidOtpCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$_InvalidOtp>
    implements _$$_InvalidOtpCopyWith<$Res> {
  __$$_InvalidOtpCopyWithImpl(
      _$_InvalidOtp _value, $Res Function(_$_InvalidOtp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InvalidOtp implements _InvalidOtp {
  const _$_InvalidOtp();

  @override
  String toString() {
    return 'AuthFailure.invalidOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidOtp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() invalidCredential,
    required TResult Function() accountExistWithDifferentCredential,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalidOtp,
    required TResult Function() sessionExpired,
  }) {
    return invalidOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? invalidCredential,
    TResult? Function()? accountExistWithDifferentCredential,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidPhoneNumber,
    TResult? Function()? invalidOtp,
    TResult? Function()? sessionExpired,
  }) {
    return invalidOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? invalidCredential,
    TResult Function()? accountExistWithDifferentCredential,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalidOtp,
    TResult Function()? sessionExpired,
    required TResult orElse(),
  }) {
    if (invalidOtp != null) {
      return invalidOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_InvalidCredential value) invalidCredential,
    required TResult Function(_AccountExistWithDifferentCredential value)
        accountExistWithDifferentCredential,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidOtp value) invalidOtp,
    required TResult Function(_SessionExpired value) sessionExpired,
  }) {
    return invalidOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CancelledByUser value)? cancelledByUser,
    TResult? Function(_InvalidCredential value)? invalidCredential,
    TResult? Function(_AccountExistWithDifferentCredential value)?
        accountExistWithDifferentCredential,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult? Function(_InvalidOtp value)? invalidOtp,
    TResult? Function(_SessionExpired value)? sessionExpired,
  }) {
    return invalidOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_InvalidCredential value)? invalidCredential,
    TResult Function(_AccountExistWithDifferentCredential value)?
        accountExistWithDifferentCredential,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidOtp value)? invalidOtp,
    TResult Function(_SessionExpired value)? sessionExpired,
    required TResult orElse(),
  }) {
    if (invalidOtp != null) {
      return invalidOtp(this);
    }
    return orElse();
  }
}

abstract class _InvalidOtp implements AuthFailure {
  const factory _InvalidOtp() = _$_InvalidOtp;
}

/// @nodoc
abstract class _$$_SessionExpiredCopyWith<$Res> {
  factory _$$_SessionExpiredCopyWith(
          _$_SessionExpired value, $Res Function(_$_SessionExpired) then) =
      __$$_SessionExpiredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SessionExpiredCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$_SessionExpired>
    implements _$$_SessionExpiredCopyWith<$Res> {
  __$$_SessionExpiredCopyWithImpl(
      _$_SessionExpired _value, $Res Function(_$_SessionExpired) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SessionExpired implements _SessionExpired {
  const _$_SessionExpired();

  @override
  String toString() {
    return 'AuthFailure.sessionExpired()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SessionExpired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() invalidCredential,
    required TResult Function() accountExistWithDifferentCredential,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalidOtp,
    required TResult Function() sessionExpired,
  }) {
    return sessionExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? invalidCredential,
    TResult? Function()? accountExistWithDifferentCredential,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidPhoneNumber,
    TResult? Function()? invalidOtp,
    TResult? Function()? sessionExpired,
  }) {
    return sessionExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? invalidCredential,
    TResult Function()? accountExistWithDifferentCredential,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalidOtp,
    TResult Function()? sessionExpired,
    required TResult orElse(),
  }) {
    if (sessionExpired != null) {
      return sessionExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_InvalidCredential value) invalidCredential,
    required TResult Function(_AccountExistWithDifferentCredential value)
        accountExistWithDifferentCredential,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(_InvalidOtp value) invalidOtp,
    required TResult Function(_SessionExpired value) sessionExpired,
  }) {
    return sessionExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CancelledByUser value)? cancelledByUser,
    TResult? Function(_InvalidCredential value)? invalidCredential,
    TResult? Function(_AccountExistWithDifferentCredential value)?
        accountExistWithDifferentCredential,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult? Function(_InvalidOtp value)? invalidOtp,
    TResult? Function(_SessionExpired value)? sessionExpired,
  }) {
    return sessionExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_InvalidCredential value)? invalidCredential,
    TResult Function(_AccountExistWithDifferentCredential value)?
        accountExistWithDifferentCredential,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(_InvalidOtp value)? invalidOtp,
    TResult Function(_SessionExpired value)? sessionExpired,
    required TResult orElse(),
  }) {
    if (sessionExpired != null) {
      return sessionExpired(this);
    }
    return orElse();
  }
}

abstract class _SessionExpired implements AuthFailure {
  const factory _SessionExpired() = _$_SessionExpired;
}
