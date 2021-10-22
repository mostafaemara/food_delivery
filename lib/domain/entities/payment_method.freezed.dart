// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaymentMethodTearOff {
  const _$PaymentMethodTearOff();

  _CashOnDelivery cashOnDelivery() {
    return const _CashOnDelivery();
  }
}

/// @nodoc
const $PaymentMethod = _$PaymentMethodTearOff();

/// @nodoc
mixin _$PaymentMethod {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cashOnDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cashOnDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cashOnDelivery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CashOnDelivery value) cashOnDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CashOnDelivery value)? cashOnDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CashOnDelivery value)? cashOnDelivery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodCopyWith<$Res> {
  factory $PaymentMethodCopyWith(
          PaymentMethod value, $Res Function(PaymentMethod) then) =
      _$PaymentMethodCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentMethodCopyWithImpl<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  _$PaymentMethodCopyWithImpl(this._value, this._then);

  final PaymentMethod _value;
  // ignore: unused_field
  final $Res Function(PaymentMethod) _then;
}

/// @nodoc
abstract class _$CashOnDeliveryCopyWith<$Res> {
  factory _$CashOnDeliveryCopyWith(
          _CashOnDelivery value, $Res Function(_CashOnDelivery) then) =
      __$CashOnDeliveryCopyWithImpl<$Res>;
}

/// @nodoc
class __$CashOnDeliveryCopyWithImpl<$Res>
    extends _$PaymentMethodCopyWithImpl<$Res>
    implements _$CashOnDeliveryCopyWith<$Res> {
  __$CashOnDeliveryCopyWithImpl(
      _CashOnDelivery _value, $Res Function(_CashOnDelivery) _then)
      : super(_value, (v) => _then(v as _CashOnDelivery));

  @override
  _CashOnDelivery get _value => super._value as _CashOnDelivery;
}

/// @nodoc

class _$_CashOnDelivery implements _CashOnDelivery {
  const _$_CashOnDelivery();

  @override
  String toString() {
    return 'PaymentMethod.cashOnDelivery()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CashOnDelivery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cashOnDelivery,
  }) {
    return cashOnDelivery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cashOnDelivery,
  }) {
    return cashOnDelivery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cashOnDelivery,
    required TResult orElse(),
  }) {
    if (cashOnDelivery != null) {
      return cashOnDelivery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CashOnDelivery value) cashOnDelivery,
  }) {
    return cashOnDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CashOnDelivery value)? cashOnDelivery,
  }) {
    return cashOnDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CashOnDelivery value)? cashOnDelivery,
    required TResult orElse(),
  }) {
    if (cashOnDelivery != null) {
      return cashOnDelivery(this);
    }
    return orElse();
  }
}

abstract class _CashOnDelivery implements PaymentMethod {
  const factory _CashOnDelivery() = _$_CashOnDelivery;
}
