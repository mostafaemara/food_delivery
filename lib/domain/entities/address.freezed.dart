// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddressTearOff {
  const _$AddressTearOff();

  _BuildingAddress buildingAddress(
      {required String city,
      required String zone,
      required String street,
      required String building,
      required String floor,
      required String apartment,
      required String mobilePhoneNumber,
      required String id}) {
    return _BuildingAddress(
      city: city,
      zone: zone,
      street: street,
      building: building,
      floor: floor,
      apartment: apartment,
      mobilePhoneNumber: mobilePhoneNumber,
      id: id,
    );
  }

  _VillaAddress villaAddress(
      {required String city,
      required String zone,
      required String street,
      required String villa,
      required String id,
      required String mobilePhoneNumber}) {
    return _VillaAddress(
      city: city,
      zone: zone,
      street: street,
      villa: villa,
      id: id,
      mobilePhoneNumber: mobilePhoneNumber,
    );
  }
}

/// @nodoc
const $Address = _$AddressTearOff();

/// @nodoc
mixin _$Address {
  String get city => throw _privateConstructorUsedError;
  String get zone => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get mobilePhoneNumber => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String city,
            String zone,
            String street,
            String building,
            String floor,
            String apartment,
            String mobilePhoneNumber,
            String id)
        buildingAddress,
    required TResult Function(String city, String zone, String street,
            String villa, String id, String mobilePhoneNumber)
        villaAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String city,
            String zone,
            String street,
            String building,
            String floor,
            String apartment,
            String mobilePhoneNumber,
            String id)?
        buildingAddress,
    TResult Function(String city, String zone, String street, String villa,
            String id, String mobilePhoneNumber)?
        villaAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String city,
            String zone,
            String street,
            String building,
            String floor,
            String apartment,
            String mobilePhoneNumber,
            String id)?
        buildingAddress,
    TResult Function(String city, String zone, String street, String villa,
            String id, String mobilePhoneNumber)?
        villaAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuildingAddress value) buildingAddress,
    required TResult Function(_VillaAddress value) villaAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BuildingAddress value)? buildingAddress,
    TResult Function(_VillaAddress value)? villaAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuildingAddress value)? buildingAddress,
    TResult Function(_VillaAddress value)? villaAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res>;
  $Res call(
      {String city,
      String zone,
      String street,
      String mobilePhoneNumber,
      String id});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  final Address _value;
  // ignore: unused_field
  final $Res Function(Address) _then;

  @override
  $Res call({
    Object? city = freezed,
    Object? zone = freezed,
    Object? street = freezed,
    Object? mobilePhoneNumber = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zone: zone == freezed
          ? _value.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as String,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      mobilePhoneNumber: mobilePhoneNumber == freezed
          ? _value.mobilePhoneNumber
          : mobilePhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BuildingAddressCopyWith<$Res>
    implements $AddressCopyWith<$Res> {
  factory _$BuildingAddressCopyWith(
          _BuildingAddress value, $Res Function(_BuildingAddress) then) =
      __$BuildingAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {String city,
      String zone,
      String street,
      String building,
      String floor,
      String apartment,
      String mobilePhoneNumber,
      String id});
}

/// @nodoc
class __$BuildingAddressCopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res>
    implements _$BuildingAddressCopyWith<$Res> {
  __$BuildingAddressCopyWithImpl(
      _BuildingAddress _value, $Res Function(_BuildingAddress) _then)
      : super(_value, (v) => _then(v as _BuildingAddress));

  @override
  _BuildingAddress get _value => super._value as _BuildingAddress;

  @override
  $Res call({
    Object? city = freezed,
    Object? zone = freezed,
    Object? street = freezed,
    Object? building = freezed,
    Object? floor = freezed,
    Object? apartment = freezed,
    Object? mobilePhoneNumber = freezed,
    Object? id = freezed,
  }) {
    return _then(_BuildingAddress(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zone: zone == freezed
          ? _value.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as String,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String,
      mobilePhoneNumber: mobilePhoneNumber == freezed
          ? _value.mobilePhoneNumber
          : mobilePhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BuildingAddress implements _BuildingAddress {
  const _$_BuildingAddress(
      {required this.city,
      required this.zone,
      required this.street,
      required this.building,
      required this.floor,
      required this.apartment,
      required this.mobilePhoneNumber,
      required this.id});

  @override
  final String city;
  @override
  final String zone;
  @override
  final String street;
  @override
  final String building;
  @override
  final String floor;
  @override
  final String apartment;
  @override
  final String mobilePhoneNumber;
  @override
  final String id;

  @override
  String toString() {
    return 'Address.buildingAddress(city: $city, zone: $zone, street: $street, building: $building, floor: $floor, apartment: $apartment, mobilePhoneNumber: $mobilePhoneNumber, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BuildingAddress &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zone, zone) || other.zone == zone) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.building, building) ||
                other.building == building) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.apartment, apartment) ||
                other.apartment == apartment) &&
            (identical(other.mobilePhoneNumber, mobilePhoneNumber) ||
                other.mobilePhoneNumber == mobilePhoneNumber) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city, zone, street, building,
      floor, apartment, mobilePhoneNumber, id);

  @JsonKey(ignore: true)
  @override
  _$BuildingAddressCopyWith<_BuildingAddress> get copyWith =>
      __$BuildingAddressCopyWithImpl<_BuildingAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String city,
            String zone,
            String street,
            String building,
            String floor,
            String apartment,
            String mobilePhoneNumber,
            String id)
        buildingAddress,
    required TResult Function(String city, String zone, String street,
            String villa, String id, String mobilePhoneNumber)
        villaAddress,
  }) {
    return buildingAddress(
        city, zone, street, building, floor, apartment, mobilePhoneNumber, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String city,
            String zone,
            String street,
            String building,
            String floor,
            String apartment,
            String mobilePhoneNumber,
            String id)?
        buildingAddress,
    TResult Function(String city, String zone, String street, String villa,
            String id, String mobilePhoneNumber)?
        villaAddress,
  }) {
    return buildingAddress?.call(
        city, zone, street, building, floor, apartment, mobilePhoneNumber, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String city,
            String zone,
            String street,
            String building,
            String floor,
            String apartment,
            String mobilePhoneNumber,
            String id)?
        buildingAddress,
    TResult Function(String city, String zone, String street, String villa,
            String id, String mobilePhoneNumber)?
        villaAddress,
    required TResult orElse(),
  }) {
    if (buildingAddress != null) {
      return buildingAddress(city, zone, street, building, floor, apartment,
          mobilePhoneNumber, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuildingAddress value) buildingAddress,
    required TResult Function(_VillaAddress value) villaAddress,
  }) {
    return buildingAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BuildingAddress value)? buildingAddress,
    TResult Function(_VillaAddress value)? villaAddress,
  }) {
    return buildingAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuildingAddress value)? buildingAddress,
    TResult Function(_VillaAddress value)? villaAddress,
    required TResult orElse(),
  }) {
    if (buildingAddress != null) {
      return buildingAddress(this);
    }
    return orElse();
  }
}

abstract class _BuildingAddress implements Address {
  const factory _BuildingAddress(
      {required String city,
      required String zone,
      required String street,
      required String building,
      required String floor,
      required String apartment,
      required String mobilePhoneNumber,
      required String id}) = _$_BuildingAddress;

  @override
  String get city;
  @override
  String get zone;
  @override
  String get street;
  String get building;
  String get floor;
  String get apartment;
  @override
  String get mobilePhoneNumber;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$BuildingAddressCopyWith<_BuildingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VillaAddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$VillaAddressCopyWith(
          _VillaAddress value, $Res Function(_VillaAddress) then) =
      __$VillaAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {String city,
      String zone,
      String street,
      String villa,
      String id,
      String mobilePhoneNumber});
}

/// @nodoc
class __$VillaAddressCopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res>
    implements _$VillaAddressCopyWith<$Res> {
  __$VillaAddressCopyWithImpl(
      _VillaAddress _value, $Res Function(_VillaAddress) _then)
      : super(_value, (v) => _then(v as _VillaAddress));

  @override
  _VillaAddress get _value => super._value as _VillaAddress;

  @override
  $Res call({
    Object? city = freezed,
    Object? zone = freezed,
    Object? street = freezed,
    Object? villa = freezed,
    Object? id = freezed,
    Object? mobilePhoneNumber = freezed,
  }) {
    return _then(_VillaAddress(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zone: zone == freezed
          ? _value.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as String,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      villa: villa == freezed
          ? _value.villa
          : villa // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mobilePhoneNumber: mobilePhoneNumber == freezed
          ? _value.mobilePhoneNumber
          : mobilePhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VillaAddress implements _VillaAddress {
  const _$_VillaAddress(
      {required this.city,
      required this.zone,
      required this.street,
      required this.villa,
      required this.id,
      required this.mobilePhoneNumber});

  @override
  final String city;
  @override
  final String zone;
  @override
  final String street;
  @override
  final String villa;
  @override
  final String id;
  @override
  final String mobilePhoneNumber;

  @override
  String toString() {
    return 'Address.villaAddress(city: $city, zone: $zone, street: $street, villa: $villa, id: $id, mobilePhoneNumber: $mobilePhoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VillaAddress &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zone, zone) || other.zone == zone) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.villa, villa) || other.villa == villa) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mobilePhoneNumber, mobilePhoneNumber) ||
                other.mobilePhoneNumber == mobilePhoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, city, zone, street, villa, id, mobilePhoneNumber);

  @JsonKey(ignore: true)
  @override
  _$VillaAddressCopyWith<_VillaAddress> get copyWith =>
      __$VillaAddressCopyWithImpl<_VillaAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String city,
            String zone,
            String street,
            String building,
            String floor,
            String apartment,
            String mobilePhoneNumber,
            String id)
        buildingAddress,
    required TResult Function(String city, String zone, String street,
            String villa, String id, String mobilePhoneNumber)
        villaAddress,
  }) {
    return villaAddress(city, zone, street, villa, id, mobilePhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String city,
            String zone,
            String street,
            String building,
            String floor,
            String apartment,
            String mobilePhoneNumber,
            String id)?
        buildingAddress,
    TResult Function(String city, String zone, String street, String villa,
            String id, String mobilePhoneNumber)?
        villaAddress,
  }) {
    return villaAddress?.call(city, zone, street, villa, id, mobilePhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String city,
            String zone,
            String street,
            String building,
            String floor,
            String apartment,
            String mobilePhoneNumber,
            String id)?
        buildingAddress,
    TResult Function(String city, String zone, String street, String villa,
            String id, String mobilePhoneNumber)?
        villaAddress,
    required TResult orElse(),
  }) {
    if (villaAddress != null) {
      return villaAddress(city, zone, street, villa, id, mobilePhoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuildingAddress value) buildingAddress,
    required TResult Function(_VillaAddress value) villaAddress,
  }) {
    return villaAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BuildingAddress value)? buildingAddress,
    TResult Function(_VillaAddress value)? villaAddress,
  }) {
    return villaAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuildingAddress value)? buildingAddress,
    TResult Function(_VillaAddress value)? villaAddress,
    required TResult orElse(),
  }) {
    if (villaAddress != null) {
      return villaAddress(this);
    }
    return orElse();
  }
}

abstract class _VillaAddress implements Address {
  const factory _VillaAddress(
      {required String city,
      required String zone,
      required String street,
      required String villa,
      required String id,
      required String mobilePhoneNumber}) = _$_VillaAddress;

  @override
  String get city;
  @override
  String get zone;
  @override
  String get street;
  String get villa;
  @override
  String get id;
  @override
  String get mobilePhoneNumber;
  @override
  @JsonKey(ignore: true)
  _$VillaAddressCopyWith<_VillaAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
