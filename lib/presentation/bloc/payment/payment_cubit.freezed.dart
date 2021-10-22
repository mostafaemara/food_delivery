// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaymentStateTearOff {
  const _$PaymentStateTearOff();

  _PaymentInit initial() {
    return const _PaymentInit();
  }

  _PaymentLoading loading() {
    return const _PaymentLoading();
  }

  _PaymentPrepared paymentPrepared({required Preorder preorder}) {
    return _PaymentPrepared(
      preorder: preorder,
    );
  }

  _PaymentSuccess paymentSuccess() {
    return const _PaymentSuccess();
  }

  _PaymentFailure failure({required PaymentFailure failure}) {
    return _PaymentFailure(
      failure: failure,
    );
  }
}

/// @nodoc
const $PaymentState = _$PaymentStateTearOff();

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Preorder preorder) paymentPrepared,
    required TResult Function() paymentSuccess,
    required TResult Function(PaymentFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Preorder preorder)? paymentPrepared,
    TResult Function()? paymentSuccess,
    TResult Function(PaymentFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Preorder preorder)? paymentPrepared,
    TResult Function()? paymentSuccess,
    TResult Function(PaymentFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentInit value) initial,
    required TResult Function(_PaymentLoading value) loading,
    required TResult Function(_PaymentPrepared value) paymentPrepared,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PaymentInit value)? initial,
    TResult Function(_PaymentLoading value)? loading,
    TResult Function(_PaymentPrepared value)? paymentPrepared,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInit value)? initial,
    TResult Function(_PaymentLoading value)? loading,
    TResult Function(_PaymentPrepared value)? paymentPrepared,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res> implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  final PaymentState _value;
  // ignore: unused_field
  final $Res Function(PaymentState) _then;
}

/// @nodoc
abstract class _$PaymentInitCopyWith<$Res> {
  factory _$PaymentInitCopyWith(
          _PaymentInit value, $Res Function(_PaymentInit) then) =
      __$PaymentInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$PaymentInitCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
    implements _$PaymentInitCopyWith<$Res> {
  __$PaymentInitCopyWithImpl(
      _PaymentInit _value, $Res Function(_PaymentInit) _then)
      : super(_value, (v) => _then(v as _PaymentInit));

  @override
  _PaymentInit get _value => super._value as _PaymentInit;
}

/// @nodoc

class _$_PaymentInit implements _PaymentInit {
  const _$_PaymentInit();

  @override
  String toString() {
    return 'PaymentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PaymentInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Preorder preorder) paymentPrepared,
    required TResult Function() paymentSuccess,
    required TResult Function(PaymentFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Preorder preorder)? paymentPrepared,
    TResult Function()? paymentSuccess,
    TResult Function(PaymentFailure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Preorder preorder)? paymentPrepared,
    TResult Function()? paymentSuccess,
    TResult Function(PaymentFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentInit value) initial,
    required TResult Function(_PaymentLoading value) loading,
    required TResult Function(_PaymentPrepared value) paymentPrepared,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PaymentInit value)? initial,
    TResult Function(_PaymentLoading value)? loading,
    TResult Function(_PaymentPrepared value)? paymentPrepared,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInit value)? initial,
    TResult Function(_PaymentLoading value)? loading,
    TResult Function(_PaymentPrepared value)? paymentPrepared,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PaymentInit implements PaymentState {
  const factory _PaymentInit() = _$_PaymentInit;
}

/// @nodoc
abstract class _$PaymentLoadingCopyWith<$Res> {
  factory _$PaymentLoadingCopyWith(
          _PaymentLoading value, $Res Function(_PaymentLoading) then) =
      __$PaymentLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$PaymentLoadingCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements _$PaymentLoadingCopyWith<$Res> {
  __$PaymentLoadingCopyWithImpl(
      _PaymentLoading _value, $Res Function(_PaymentLoading) _then)
      : super(_value, (v) => _then(v as _PaymentLoading));

  @override
  _PaymentLoading get _value => super._value as _PaymentLoading;
}

/// @nodoc

class _$_PaymentLoading implements _PaymentLoading {
  const _$_PaymentLoading();

  @override
  String toString() {
    return 'PaymentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PaymentLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Preorder preorder) paymentPrepared,
    required TResult Function() paymentSuccess,
    required TResult Function(PaymentFailure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Preorder preorder)? paymentPrepared,
    TResult Function()? paymentSuccess,
    TResult Function(PaymentFailure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Preorder preorder)? paymentPrepared,
    TResult Function()? paymentSuccess,
    TResult Function(PaymentFailure failure)? failure,
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
    required TResult Function(_PaymentInit value) initial,
    required TResult Function(_PaymentLoading value) loading,
    required TResult Function(_PaymentPrepared value) paymentPrepared,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PaymentInit value)? initial,
    TResult Function(_PaymentLoading value)? loading,
    TResult Function(_PaymentPrepared value)? paymentPrepared,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInit value)? initial,
    TResult Function(_PaymentLoading value)? loading,
    TResult Function(_PaymentPrepared value)? paymentPrepared,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PaymentLoading implements PaymentState {
  const factory _PaymentLoading() = _$_PaymentLoading;
}

/// @nodoc
abstract class _$PaymentPreparedCopyWith<$Res> {
  factory _$PaymentPreparedCopyWith(
          _PaymentPrepared value, $Res Function(_PaymentPrepared) then) =
      __$PaymentPreparedCopyWithImpl<$Res>;
  $Res call({Preorder preorder});
}

/// @nodoc
class __$PaymentPreparedCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements _$PaymentPreparedCopyWith<$Res> {
  __$PaymentPreparedCopyWithImpl(
      _PaymentPrepared _value, $Res Function(_PaymentPrepared) _then)
      : super(_value, (v) => _then(v as _PaymentPrepared));

  @override
  _PaymentPrepared get _value => super._value as _PaymentPrepared;

  @override
  $Res call({
    Object? preorder = freezed,
  }) {
    return _then(_PaymentPrepared(
      preorder: preorder == freezed
          ? _value.preorder
          : preorder // ignore: cast_nullable_to_non_nullable
              as Preorder,
    ));
  }
}

/// @nodoc

class _$_PaymentPrepared implements _PaymentPrepared {
  const _$_PaymentPrepared({required this.preorder});

  @override
  final Preorder preorder;

  @override
  String toString() {
    return 'PaymentState.paymentPrepared(preorder: $preorder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentPrepared &&
            (identical(other.preorder, preorder) ||
                const DeepCollectionEquality()
                    .equals(other.preorder, preorder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(preorder);

  @JsonKey(ignore: true)
  @override
  _$PaymentPreparedCopyWith<_PaymentPrepared> get copyWith =>
      __$PaymentPreparedCopyWithImpl<_PaymentPrepared>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Preorder preorder) paymentPrepared,
    required TResult Function() paymentSuccess,
    required TResult Function(PaymentFailure failure) failure,
  }) {
    return paymentPrepared(preorder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Preorder preorder)? paymentPrepared,
    TResult Function()? paymentSuccess,
    TResult Function(PaymentFailure failure)? failure,
  }) {
    return paymentPrepared?.call(preorder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Preorder preorder)? paymentPrepared,
    TResult Function()? paymentSuccess,
    TResult Function(PaymentFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (paymentPrepared != null) {
      return paymentPrepared(preorder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentInit value) initial,
    required TResult Function(_PaymentLoading value) loading,
    required TResult Function(_PaymentPrepared value) paymentPrepared,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) failure,
  }) {
    return paymentPrepared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PaymentInit value)? initial,
    TResult Function(_PaymentLoading value)? loading,
    TResult Function(_PaymentPrepared value)? paymentPrepared,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? failure,
  }) {
    return paymentPrepared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInit value)? initial,
    TResult Function(_PaymentLoading value)? loading,
    TResult Function(_PaymentPrepared value)? paymentPrepared,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? failure,
    required TResult orElse(),
  }) {
    if (paymentPrepared != null) {
      return paymentPrepared(this);
    }
    return orElse();
  }
}

abstract class _PaymentPrepared implements PaymentState {
  const factory _PaymentPrepared({required Preorder preorder}) =
      _$_PaymentPrepared;

  Preorder get preorder => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PaymentPreparedCopyWith<_PaymentPrepared> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PaymentSuccessCopyWith<$Res> {
  factory _$PaymentSuccessCopyWith(
          _PaymentSuccess value, $Res Function(_PaymentSuccess) then) =
      __$PaymentSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$PaymentSuccessCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements _$PaymentSuccessCopyWith<$Res> {
  __$PaymentSuccessCopyWithImpl(
      _PaymentSuccess _value, $Res Function(_PaymentSuccess) _then)
      : super(_value, (v) => _then(v as _PaymentSuccess));

  @override
  _PaymentSuccess get _value => super._value as _PaymentSuccess;
}

/// @nodoc

class _$_PaymentSuccess implements _PaymentSuccess {
  const _$_PaymentSuccess();

  @override
  String toString() {
    return 'PaymentState.paymentSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PaymentSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Preorder preorder) paymentPrepared,
    required TResult Function() paymentSuccess,
    required TResult Function(PaymentFailure failure) failure,
  }) {
    return paymentSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Preorder preorder)? paymentPrepared,
    TResult Function()? paymentSuccess,
    TResult Function(PaymentFailure failure)? failure,
  }) {
    return paymentSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Preorder preorder)? paymentPrepared,
    TResult Function()? paymentSuccess,
    TResult Function(PaymentFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentInit value) initial,
    required TResult Function(_PaymentLoading value) loading,
    required TResult Function(_PaymentPrepared value) paymentPrepared,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) failure,
  }) {
    return paymentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PaymentInit value)? initial,
    TResult Function(_PaymentLoading value)? loading,
    TResult Function(_PaymentPrepared value)? paymentPrepared,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? failure,
  }) {
    return paymentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInit value)? initial,
    TResult Function(_PaymentLoading value)? loading,
    TResult Function(_PaymentPrepared value)? paymentPrepared,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? failure,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess(this);
    }
    return orElse();
  }
}

abstract class _PaymentSuccess implements PaymentState {
  const factory _PaymentSuccess() = _$_PaymentSuccess;
}

/// @nodoc
abstract class _$PaymentFailureCopyWith<$Res> {
  factory _$PaymentFailureCopyWith(
          _PaymentFailure value, $Res Function(_PaymentFailure) then) =
      __$PaymentFailureCopyWithImpl<$Res>;
  $Res call({PaymentFailure failure});
}

/// @nodoc
class __$PaymentFailureCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements _$PaymentFailureCopyWith<$Res> {
  __$PaymentFailureCopyWithImpl(
      _PaymentFailure _value, $Res Function(_PaymentFailure) _then)
      : super(_value, (v) => _then(v as _PaymentFailure));

  @override
  _PaymentFailure get _value => super._value as _PaymentFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_PaymentFailure(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as PaymentFailure,
    ));
  }
}

/// @nodoc

class _$_PaymentFailure implements _PaymentFailure {
  const _$_PaymentFailure({required this.failure});

  @override
  final PaymentFailure failure;

  @override
  String toString() {
    return 'PaymentState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$PaymentFailureCopyWith<_PaymentFailure> get copyWith =>
      __$PaymentFailureCopyWithImpl<_PaymentFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Preorder preorder) paymentPrepared,
    required TResult Function() paymentSuccess,
    required TResult Function(PaymentFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Preorder preorder)? paymentPrepared,
    TResult Function()? paymentSuccess,
    TResult Function(PaymentFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Preorder preorder)? paymentPrepared,
    TResult Function()? paymentSuccess,
    TResult Function(PaymentFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentInit value) initial,
    required TResult Function(_PaymentLoading value) loading,
    required TResult Function(_PaymentPrepared value) paymentPrepared,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PaymentInit value)? initial,
    TResult Function(_PaymentLoading value)? loading,
    TResult Function(_PaymentPrepared value)? paymentPrepared,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInit value)? initial,
    TResult Function(_PaymentLoading value)? loading,
    TResult Function(_PaymentPrepared value)? paymentPrepared,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _PaymentFailure implements PaymentState {
  const factory _PaymentFailure({required PaymentFailure failure}) =
      _$_PaymentFailure;

  PaymentFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PaymentFailureCopyWith<_PaymentFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
