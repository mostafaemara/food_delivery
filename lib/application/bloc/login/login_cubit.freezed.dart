// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  Submitting submitting() {
    return const Submitting();
  }

  Success success() {
    return const Success();
  }

  Idle idle() {
    return const Idle();
  }

  LoginStateError error({required AuthFailure failure}) {
    return LoginStateError(
      failure: failure,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitting,
    required TResult Function() success,
    required TResult Function() idle,
    required TResult Function(AuthFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(AuthFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(AuthFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Submitting value) submitting,
    required TResult Function(Success value) success,
    required TResult Function(Idle value) idle,
    required TResult Function(LoginStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Submitting value)? submitting,
    TResult Function(Success value)? success,
    TResult Function(Idle value)? idle,
    TResult Function(LoginStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Submitting value)? submitting,
    TResult Function(Success value)? success,
    TResult Function(Idle value)? idle,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class $SubmittingCopyWith<$Res> {
  factory $SubmittingCopyWith(
          Submitting value, $Res Function(Submitting) then) =
      _$SubmittingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmittingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $SubmittingCopyWith<$Res> {
  _$SubmittingCopyWithImpl(Submitting _value, $Res Function(Submitting) _then)
      : super(_value, (v) => _then(v as Submitting));

  @override
  Submitting get _value => super._value as Submitting;
}

/// @nodoc

class _$Submitting implements Submitting {
  const _$Submitting();

  @override
  String toString() {
    return 'LoginState.submitting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Submitting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitting,
    required TResult Function() success,
    required TResult Function() idle,
    required TResult Function(AuthFailure failure) error,
  }) {
    return submitting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(AuthFailure failure)? error,
  }) {
    return submitting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(AuthFailure failure)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Submitting value) submitting,
    required TResult Function(Success value) success,
    required TResult Function(Idle value) idle,
    required TResult Function(LoginStateError value) error,
  }) {
    return submitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Submitting value)? submitting,
    TResult Function(Success value)? success,
    TResult Function(Idle value)? idle,
    TResult Function(LoginStateError value)? error,
  }) {
    return submitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Submitting value)? submitting,
    TResult Function(Success value)? success,
    TResult Function(Idle value)? idle,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(this);
    }
    return orElse();
  }
}

abstract class Submitting implements LoginState {
  const factory Submitting() = _$Submitting;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;
}

/// @nodoc

class _$Success implements Success {
  const _$Success();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitting,
    required TResult Function() success,
    required TResult Function() idle,
    required TResult Function(AuthFailure failure) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(AuthFailure failure)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(AuthFailure failure)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Submitting value) submitting,
    required TResult Function(Success value) success,
    required TResult Function(Idle value) idle,
    required TResult Function(LoginStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Submitting value)? submitting,
    TResult Function(Success value)? success,
    TResult Function(Idle value)? idle,
    TResult Function(LoginStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Submitting value)? submitting,
    TResult Function(Success value)? success,
    TResult Function(Idle value)? idle,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements LoginState {
  const factory Success() = _$Success;
}

/// @nodoc
abstract class $IdleCopyWith<$Res> {
  factory $IdleCopyWith(Idle value, $Res Function(Idle) then) =
      _$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdleCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $IdleCopyWith<$Res> {
  _$IdleCopyWithImpl(Idle _value, $Res Function(Idle) _then)
      : super(_value, (v) => _then(v as Idle));

  @override
  Idle get _value => super._value as Idle;
}

/// @nodoc

class _$Idle implements Idle {
  const _$Idle();

  @override
  String toString() {
    return 'LoginState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitting,
    required TResult Function() success,
    required TResult Function() idle,
    required TResult Function(AuthFailure failure) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(AuthFailure failure)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(AuthFailure failure)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Submitting value) submitting,
    required TResult Function(Success value) success,
    required TResult Function(Idle value) idle,
    required TResult Function(LoginStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Submitting value)? submitting,
    TResult Function(Success value)? success,
    TResult Function(Idle value)? idle,
    TResult Function(LoginStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Submitting value)? submitting,
    TResult Function(Success value)? success,
    TResult Function(Idle value)? idle,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle implements LoginState {
  const factory Idle() = _$Idle;
}

/// @nodoc
abstract class $LoginStateErrorCopyWith<$Res> {
  factory $LoginStateErrorCopyWith(
          LoginStateError value, $Res Function(LoginStateError) then) =
      _$LoginStateErrorCopyWithImpl<$Res>;
  $Res call({AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoginStateErrorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateErrorCopyWith<$Res> {
  _$LoginStateErrorCopyWithImpl(
      LoginStateError _value, $Res Function(LoginStateError) _then)
      : super(_value, (v) => _then(v as LoginStateError));

  @override
  LoginStateError get _value => super._value as LoginStateError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(LoginStateError(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get failure {
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoginStateError implements LoginStateError {
  const _$LoginStateError({required this.failure});

  @override
  final AuthFailure failure;

  @override
  String toString() {
    return 'LoginState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginStateError &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $LoginStateErrorCopyWith<LoginStateError> get copyWith =>
      _$LoginStateErrorCopyWithImpl<LoginStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitting,
    required TResult Function() success,
    required TResult Function() idle,
    required TResult Function(AuthFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(AuthFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(AuthFailure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Submitting value) submitting,
    required TResult Function(Success value) success,
    required TResult Function(Idle value) idle,
    required TResult Function(LoginStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Submitting value)? submitting,
    TResult Function(Success value)? success,
    TResult Function(Idle value)? idle,
    TResult Function(LoginStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Submitting value)? submitting,
    TResult Function(Success value)? success,
    TResult Function(Idle value)? idle,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginStateError implements LoginState {
  const factory LoginStateError({required AuthFailure failure}) =
      _$LoginStateError;

  AuthFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginStateErrorCopyWith<LoginStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
