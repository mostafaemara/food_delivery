// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'addresses_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddressesStateTearOff {
  const _$AddressesStateTearOff();

  _AddressesState call(
      {required List<Address> addresses,
      required Option<String> selectedAddress,
      required Option<AddressFailure> failure}) {
    return _AddressesState(
      addresses: addresses,
      selectedAddress: selectedAddress,
      failure: failure,
    );
  }
}

/// @nodoc
const $AddressesState = _$AddressesStateTearOff();

/// @nodoc
mixin _$AddressesState {
  List<Address> get addresses => throw _privateConstructorUsedError;
  Option<String> get selectedAddress => throw _privateConstructorUsedError;
  Option<AddressFailure> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressesStateCopyWith<AddressesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressesStateCopyWith<$Res> {
  factory $AddressesStateCopyWith(
          AddressesState value, $Res Function(AddressesState) then) =
      _$AddressesStateCopyWithImpl<$Res>;
  $Res call(
      {List<Address> addresses,
      Option<String> selectedAddress,
      Option<AddressFailure> failure});
}

/// @nodoc
class _$AddressesStateCopyWithImpl<$Res>
    implements $AddressesStateCopyWith<$Res> {
  _$AddressesStateCopyWithImpl(this._value, this._then);

  final AddressesState _value;
  // ignore: unused_field
  final $Res Function(AddressesState) _then;

  @override
  $Res call({
    Object? addresses = freezed,
    Object? selectedAddress = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      addresses: addresses == freezed
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Address>,
      selectedAddress: selectedAddress == freezed
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<AddressFailure>,
    ));
  }
}

/// @nodoc
abstract class _$AddressesStateCopyWith<$Res>
    implements $AddressesStateCopyWith<$Res> {
  factory _$AddressesStateCopyWith(
          _AddressesState value, $Res Function(_AddressesState) then) =
      __$AddressesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Address> addresses,
      Option<String> selectedAddress,
      Option<AddressFailure> failure});
}

/// @nodoc
class __$AddressesStateCopyWithImpl<$Res>
    extends _$AddressesStateCopyWithImpl<$Res>
    implements _$AddressesStateCopyWith<$Res> {
  __$AddressesStateCopyWithImpl(
      _AddressesState _value, $Res Function(_AddressesState) _then)
      : super(_value, (v) => _then(v as _AddressesState));

  @override
  _AddressesState get _value => super._value as _AddressesState;

  @override
  $Res call({
    Object? addresses = freezed,
    Object? selectedAddress = freezed,
    Object? failure = freezed,
  }) {
    return _then(_AddressesState(
      addresses: addresses == freezed
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Address>,
      selectedAddress: selectedAddress == freezed
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<AddressFailure>,
    ));
  }
}

/// @nodoc

class _$_AddressesState implements _AddressesState {
  const _$_AddressesState(
      {required this.addresses,
      required this.selectedAddress,
      required this.failure});

  @override
  final List<Address> addresses;
  @override
  final Option<String> selectedAddress;
  @override
  final Option<AddressFailure> failure;

  @override
  String toString() {
    return 'AddressesState(addresses: $addresses, selectedAddress: $selectedAddress, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddressesState &&
            (identical(other.addresses, addresses) ||
                const DeepCollectionEquality()
                    .equals(other.addresses, addresses)) &&
            (identical(other.selectedAddress, selectedAddress) ||
                const DeepCollectionEquality()
                    .equals(other.selectedAddress, selectedAddress)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addresses) ^
      const DeepCollectionEquality().hash(selectedAddress) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$AddressesStateCopyWith<_AddressesState> get copyWith =>
      __$AddressesStateCopyWithImpl<_AddressesState>(this, _$identity);
}

abstract class _AddressesState implements AddressesState {
  const factory _AddressesState(
      {required List<Address> addresses,
      required Option<String> selectedAddress,
      required Option<AddressFailure> failure}) = _$_AddressesState;

  @override
  List<Address> get addresses => throw _privateConstructorUsedError;
  @override
  Option<String> get selectedAddress => throw _privateConstructorUsedError;
  @override
  Option<AddressFailure> get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddressesStateCopyWith<_AddressesState> get copyWith =>
      throw _privateConstructorUsedError;
}
