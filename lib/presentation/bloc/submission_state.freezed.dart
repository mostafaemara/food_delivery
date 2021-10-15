// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'submission_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubmissionStateTearOff {
  const _$SubmissionStateTearOff();

  Submitting<T> submitting<T>() {
    return Submitting<T>();
  }

  SubmissionSuccess<T> success<T>() {
    return SubmissionSuccess<T>();
  }

  SubmissionIdle<T> idle<T>() {
    return SubmissionIdle<T>();
  }

  SubmissionFailed<T> failed<T>({required T failure}) {
    return SubmissionFailed<T>(
      failure: failure,
    );
  }
}

/// @nodoc
const $SubmissionState = _$SubmissionStateTearOff();

/// @nodoc
mixin _$SubmissionState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitting,
    required TResult Function() success,
    required TResult Function() idle,
    required TResult Function(T failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(T failure)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(T failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Submitting<T> value) submitting,
    required TResult Function(SubmissionSuccess<T> value) success,
    required TResult Function(SubmissionIdle<T> value) idle,
    required TResult Function(SubmissionFailed<T> value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Submitting<T> value)? submitting,
    TResult Function(SubmissionSuccess<T> value)? success,
    TResult Function(SubmissionIdle<T> value)? idle,
    TResult Function(SubmissionFailed<T> value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Submitting<T> value)? submitting,
    TResult Function(SubmissionSuccess<T> value)? success,
    TResult Function(SubmissionIdle<T> value)? idle,
    TResult Function(SubmissionFailed<T> value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionStateCopyWith<T, $Res> {
  factory $SubmissionStateCopyWith(
          SubmissionState<T> value, $Res Function(SubmissionState<T>) then) =
      _$SubmissionStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$SubmissionStateCopyWithImpl<T, $Res>
    implements $SubmissionStateCopyWith<T, $Res> {
  _$SubmissionStateCopyWithImpl(this._value, this._then);

  final SubmissionState<T> _value;
  // ignore: unused_field
  final $Res Function(SubmissionState<T>) _then;
}

/// @nodoc
abstract class $SubmittingCopyWith<T, $Res> {
  factory $SubmittingCopyWith(
          Submitting<T> value, $Res Function(Submitting<T>) then) =
      _$SubmittingCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$SubmittingCopyWithImpl<T, $Res>
    extends _$SubmissionStateCopyWithImpl<T, $Res>
    implements $SubmittingCopyWith<T, $Res> {
  _$SubmittingCopyWithImpl(
      Submitting<T> _value, $Res Function(Submitting<T>) _then)
      : super(_value, (v) => _then(v as Submitting<T>));

  @override
  Submitting<T> get _value => super._value as Submitting<T>;
}

/// @nodoc

class _$Submitting<T> implements Submitting<T> {
  const _$Submitting();

  @override
  String toString() {
    return 'SubmissionState<$T>.submitting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Submitting<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitting,
    required TResult Function() success,
    required TResult Function() idle,
    required TResult Function(T failure) failed,
  }) {
    return submitting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(T failure)? failed,
  }) {
    return submitting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(T failure)? failed,
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
    required TResult Function(Submitting<T> value) submitting,
    required TResult Function(SubmissionSuccess<T> value) success,
    required TResult Function(SubmissionIdle<T> value) idle,
    required TResult Function(SubmissionFailed<T> value) failed,
  }) {
    return submitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Submitting<T> value)? submitting,
    TResult Function(SubmissionSuccess<T> value)? success,
    TResult Function(SubmissionIdle<T> value)? idle,
    TResult Function(SubmissionFailed<T> value)? failed,
  }) {
    return submitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Submitting<T> value)? submitting,
    TResult Function(SubmissionSuccess<T> value)? success,
    TResult Function(SubmissionIdle<T> value)? idle,
    TResult Function(SubmissionFailed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(this);
    }
    return orElse();
  }
}

abstract class Submitting<T> implements SubmissionState<T> {
  const factory Submitting() = _$Submitting<T>;
}

/// @nodoc
abstract class $SubmissionSuccessCopyWith<T, $Res> {
  factory $SubmissionSuccessCopyWith(SubmissionSuccess<T> value,
          $Res Function(SubmissionSuccess<T>) then) =
      _$SubmissionSuccessCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$SubmissionSuccessCopyWithImpl<T, $Res>
    extends _$SubmissionStateCopyWithImpl<T, $Res>
    implements $SubmissionSuccessCopyWith<T, $Res> {
  _$SubmissionSuccessCopyWithImpl(
      SubmissionSuccess<T> _value, $Res Function(SubmissionSuccess<T>) _then)
      : super(_value, (v) => _then(v as SubmissionSuccess<T>));

  @override
  SubmissionSuccess<T> get _value => super._value as SubmissionSuccess<T>;
}

/// @nodoc

class _$SubmissionSuccess<T> implements SubmissionSuccess<T> {
  const _$SubmissionSuccess();

  @override
  String toString() {
    return 'SubmissionState<$T>.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmissionSuccess<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitting,
    required TResult Function() success,
    required TResult Function() idle,
    required TResult Function(T failure) failed,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(T failure)? failed,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(T failure)? failed,
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
    required TResult Function(Submitting<T> value) submitting,
    required TResult Function(SubmissionSuccess<T> value) success,
    required TResult Function(SubmissionIdle<T> value) idle,
    required TResult Function(SubmissionFailed<T> value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Submitting<T> value)? submitting,
    TResult Function(SubmissionSuccess<T> value)? success,
    TResult Function(SubmissionIdle<T> value)? idle,
    TResult Function(SubmissionFailed<T> value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Submitting<T> value)? submitting,
    TResult Function(SubmissionSuccess<T> value)? success,
    TResult Function(SubmissionIdle<T> value)? idle,
    TResult Function(SubmissionFailed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SubmissionSuccess<T> implements SubmissionState<T> {
  const factory SubmissionSuccess() = _$SubmissionSuccess<T>;
}

/// @nodoc
abstract class $SubmissionIdleCopyWith<T, $Res> {
  factory $SubmissionIdleCopyWith(
          SubmissionIdle<T> value, $Res Function(SubmissionIdle<T>) then) =
      _$SubmissionIdleCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$SubmissionIdleCopyWithImpl<T, $Res>
    extends _$SubmissionStateCopyWithImpl<T, $Res>
    implements $SubmissionIdleCopyWith<T, $Res> {
  _$SubmissionIdleCopyWithImpl(
      SubmissionIdle<T> _value, $Res Function(SubmissionIdle<T>) _then)
      : super(_value, (v) => _then(v as SubmissionIdle<T>));

  @override
  SubmissionIdle<T> get _value => super._value as SubmissionIdle<T>;
}

/// @nodoc

class _$SubmissionIdle<T> implements SubmissionIdle<T> {
  const _$SubmissionIdle();

  @override
  String toString() {
    return 'SubmissionState<$T>.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmissionIdle<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitting,
    required TResult Function() success,
    required TResult Function() idle,
    required TResult Function(T failure) failed,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(T failure)? failed,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(T failure)? failed,
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
    required TResult Function(Submitting<T> value) submitting,
    required TResult Function(SubmissionSuccess<T> value) success,
    required TResult Function(SubmissionIdle<T> value) idle,
    required TResult Function(SubmissionFailed<T> value) failed,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Submitting<T> value)? submitting,
    TResult Function(SubmissionSuccess<T> value)? success,
    TResult Function(SubmissionIdle<T> value)? idle,
    TResult Function(SubmissionFailed<T> value)? failed,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Submitting<T> value)? submitting,
    TResult Function(SubmissionSuccess<T> value)? success,
    TResult Function(SubmissionIdle<T> value)? idle,
    TResult Function(SubmissionFailed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class SubmissionIdle<T> implements SubmissionState<T> {
  const factory SubmissionIdle() = _$SubmissionIdle<T>;
}

/// @nodoc
abstract class $SubmissionFailedCopyWith<T, $Res> {
  factory $SubmissionFailedCopyWith(
          SubmissionFailed<T> value, $Res Function(SubmissionFailed<T>) then) =
      _$SubmissionFailedCopyWithImpl<T, $Res>;
  $Res call({T failure});
}

/// @nodoc
class _$SubmissionFailedCopyWithImpl<T, $Res>
    extends _$SubmissionStateCopyWithImpl<T, $Res>
    implements $SubmissionFailedCopyWith<T, $Res> {
  _$SubmissionFailedCopyWithImpl(
      SubmissionFailed<T> _value, $Res Function(SubmissionFailed<T>) _then)
      : super(_value, (v) => _then(v as SubmissionFailed<T>));

  @override
  SubmissionFailed<T> get _value => super._value as SubmissionFailed<T>;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(SubmissionFailed<T>(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SubmissionFailed<T> implements SubmissionFailed<T> {
  const _$SubmissionFailed({required this.failure});

  @override
  final T failure;

  @override
  String toString() {
    return 'SubmissionState<$T>.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubmissionFailed<T> &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $SubmissionFailedCopyWith<T, SubmissionFailed<T>> get copyWith =>
      _$SubmissionFailedCopyWithImpl<T, SubmissionFailed<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitting,
    required TResult Function() success,
    required TResult Function() idle,
    required TResult Function(T failure) failed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(T failure)? failed,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function()? idle,
    TResult Function(T failure)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Submitting<T> value) submitting,
    required TResult Function(SubmissionSuccess<T> value) success,
    required TResult Function(SubmissionIdle<T> value) idle,
    required TResult Function(SubmissionFailed<T> value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Submitting<T> value)? submitting,
    TResult Function(SubmissionSuccess<T> value)? success,
    TResult Function(SubmissionIdle<T> value)? idle,
    TResult Function(SubmissionFailed<T> value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Submitting<T> value)? submitting,
    TResult Function(SubmissionSuccess<T> value)? success,
    TResult Function(SubmissionIdle<T> value)? idle,
    TResult Function(SubmissionFailed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class SubmissionFailed<T> implements SubmissionState<T> {
  const factory SubmissionFailed({required T failure}) = _$SubmissionFailed<T>;

  T get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionFailedCopyWith<T, SubmissionFailed<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
