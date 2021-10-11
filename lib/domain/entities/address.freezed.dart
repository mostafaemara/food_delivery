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

  BuildingAddress buildingAddress(
      {required String apartment,
      required String id,
      required String building,
      required String floor,
      required String city,
      required String zone,
      required String street,
      required String mobilePhoneNumber}) {
    return BuildingAddress(
      apartment: apartment,
      id: id,
      building: building,
      floor: floor,
      city: city,
      zone: zone,
      street: street,
      mobilePhoneNumber: mobilePhoneNumber,
    );
  }

  VillaAddress villaAddress(
      {required String villa,
      required String city,
      required String id,
      required String zone,
      required String street,
      required String mobilePhoneNumber}) {
    return VillaAddress(
      villa: villa,
      city: city,
      id: id,
      zone: zone,
      street: street,
      mobilePhoneNumber: mobilePhoneNumber,
    );
  }
}

/// @nodoc
const $Address = _$AddressTearOff();

/// @nodoc
mixin _$Address {
  String get id => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get zone => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get mobilePhoneNumber => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String apartment,
            String id,
            String building,
            String floor,
            String city,
            String zone,
            String street,
            String mobilePhoneNumber)
        buildingAddress,
    required TResult Function(String villa, String city, String id, String zone,
            String street, String mobilePhoneNumber)
        villaAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String apartment, String id, String building, String floor,
            String city, String zone, String street, String mobilePhoneNumber)?
        buildingAddress,
    TResult Function(String villa, String city, String id, String zone,
            String street, String mobilePhoneNumber)?
        villaAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apartment, String id, String building, String floor,
            String city, String zone, String street, String mobilePhoneNumber)?
        buildingAddress,
    TResult Function(String villa, String city, String id, String zone,
            String street, String mobilePhoneNumber)?
        villaAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BuildingAddress value) buildingAddress,
    required TResult Function(VillaAddress value) villaAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BuildingAddress value)? buildingAddress,
    TResult Function(VillaAddress value)? villaAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuildingAddress value)? buildingAddress,
    TResult Function(VillaAddress value)? villaAddress,
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
      {String id,
      String city,
      String zone,
      String street,
      String mobilePhoneNumber});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  final Address _value;
  // ignore: unused_field
  final $Res Function(Address) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? city = freezed,
    Object? zone = freezed,
    Object? street = freezed,
    Object? mobilePhoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc
abstract class $BuildingAddressCopyWith<$Res>
    implements $AddressCopyWith<$Res> {
  factory $BuildingAddressCopyWith(
          BuildingAddress value, $Res Function(BuildingAddress) then) =
      _$BuildingAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {String apartment,
      String id,
      String building,
      String floor,
      String city,
      String zone,
      String street,
      String mobilePhoneNumber});
}

/// @nodoc
class _$BuildingAddressCopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res>
    implements $BuildingAddressCopyWith<$Res> {
  _$BuildingAddressCopyWithImpl(
      BuildingAddress _value, $Res Function(BuildingAddress) _then)
      : super(_value, (v) => _then(v as BuildingAddress));

  @override
  BuildingAddress get _value => super._value as BuildingAddress;

  @override
  $Res call({
    Object? apartment = freezed,
    Object? id = freezed,
    Object? building = freezed,
    Object? floor = freezed,
    Object? city = freezed,
    Object? zone = freezed,
    Object? street = freezed,
    Object? mobilePhoneNumber = freezed,
  }) {
    return _then(BuildingAddress(
      apartment: apartment == freezed
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc

class _$BuildingAddress implements BuildingAddress {
  _$BuildingAddress(
      {required this.apartment,
      required this.id,
      required this.building,
      required this.floor,
      required this.city,
      required this.zone,
      required this.street,
      required this.mobilePhoneNumber});

  @override
  final String apartment;
  @override
  final String id;
  @override
  final String building;
  @override
  final String floor;
  @override
  final String city;
  @override
  final String zone;
  @override
  final String street;
  @override
  final String mobilePhoneNumber;

  @override
  String toString() {
    return 'Address.buildingAddress(apartment: $apartment, id: $id, building: $building, floor: $floor, city: $city, zone: $zone, street: $street, mobilePhoneNumber: $mobilePhoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BuildingAddress &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality()
                    .equals(other.apartment, apartment)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.building, building) ||
                const DeepCollectionEquality()
                    .equals(other.building, building)) &&
            (identical(other.floor, floor) ||
                const DeepCollectionEquality().equals(other.floor, floor)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.zone, zone) ||
                const DeepCollectionEquality().equals(other.zone, zone)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.mobilePhoneNumber, mobilePhoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.mobilePhoneNumber, mobilePhoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(building) ^
      const DeepCollectionEquality().hash(floor) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(zone) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(mobilePhoneNumber);

  @JsonKey(ignore: true)
  @override
  $BuildingAddressCopyWith<BuildingAddress> get copyWith =>
      _$BuildingAddressCopyWithImpl<BuildingAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String apartment,
            String id,
            String building,
            String floor,
            String city,
            String zone,
            String street,
            String mobilePhoneNumber)
        buildingAddress,
    required TResult Function(String villa, String city, String id, String zone,
            String street, String mobilePhoneNumber)
        villaAddress,
  }) {
    return buildingAddress(
        apartment, id, building, floor, city, zone, street, mobilePhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String apartment, String id, String building, String floor,
            String city, String zone, String street, String mobilePhoneNumber)?
        buildingAddress,
    TResult Function(String villa, String city, String id, String zone,
            String street, String mobilePhoneNumber)?
        villaAddress,
  }) {
    return buildingAddress?.call(
        apartment, id, building, floor, city, zone, street, mobilePhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apartment, String id, String building, String floor,
            String city, String zone, String street, String mobilePhoneNumber)?
        buildingAddress,
    TResult Function(String villa, String city, String id, String zone,
            String street, String mobilePhoneNumber)?
        villaAddress,
    required TResult orElse(),
  }) {
    if (buildingAddress != null) {
      return buildingAddress(apartment, id, building, floor, city, zone, street,
          mobilePhoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BuildingAddress value) buildingAddress,
    required TResult Function(VillaAddress value) villaAddress,
  }) {
    return buildingAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BuildingAddress value)? buildingAddress,
    TResult Function(VillaAddress value)? villaAddress,
  }) {
    return buildingAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuildingAddress value)? buildingAddress,
    TResult Function(VillaAddress value)? villaAddress,
    required TResult orElse(),
  }) {
    if (buildingAddress != null) {
      return buildingAddress(this);
    }
    return orElse();
  }
}

abstract class BuildingAddress implements Address {
  factory BuildingAddress(
      {required String apartment,
      required String id,
      required String building,
      required String floor,
      required String city,
      required String zone,
      required String street,
      required String mobilePhoneNumber}) = _$BuildingAddress;

  String get apartment => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  String get building => throw _privateConstructorUsedError;
  String get floor => throw _privateConstructorUsedError;
  @override
  String get city => throw _privateConstructorUsedError;
  @override
  String get zone => throw _privateConstructorUsedError;
  @override
  String get street => throw _privateConstructorUsedError;
  @override
  String get mobilePhoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BuildingAddressCopyWith<BuildingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VillaAddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory $VillaAddressCopyWith(
          VillaAddress value, $Res Function(VillaAddress) then) =
      _$VillaAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {String villa,
      String city,
      String id,
      String zone,
      String street,
      String mobilePhoneNumber});
}

/// @nodoc
class _$VillaAddressCopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res>
    implements $VillaAddressCopyWith<$Res> {
  _$VillaAddressCopyWithImpl(
      VillaAddress _value, $Res Function(VillaAddress) _then)
      : super(_value, (v) => _then(v as VillaAddress));

  @override
  VillaAddress get _value => super._value as VillaAddress;

  @override
  $Res call({
    Object? villa = freezed,
    Object? city = freezed,
    Object? id = freezed,
    Object? zone = freezed,
    Object? street = freezed,
    Object? mobilePhoneNumber = freezed,
  }) {
    return _then(VillaAddress(
      villa: villa == freezed
          ? _value.villa
          : villa // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc

class _$VillaAddress implements VillaAddress {
  _$VillaAddress(
      {required this.villa,
      required this.city,
      required this.id,
      required this.zone,
      required this.street,
      required this.mobilePhoneNumber});

  @override
  final String villa;
  @override
  final String city;
  @override
  final String id;
  @override
  final String zone;
  @override
  final String street;
  @override
  final String mobilePhoneNumber;

  @override
  String toString() {
    return 'Address.villaAddress(villa: $villa, city: $city, id: $id, zone: $zone, street: $street, mobilePhoneNumber: $mobilePhoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VillaAddress &&
            (identical(other.villa, villa) ||
                const DeepCollectionEquality().equals(other.villa, villa)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.zone, zone) ||
                const DeepCollectionEquality().equals(other.zone, zone)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.mobilePhoneNumber, mobilePhoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.mobilePhoneNumber, mobilePhoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(villa) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(zone) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(mobilePhoneNumber);

  @JsonKey(ignore: true)
  @override
  $VillaAddressCopyWith<VillaAddress> get copyWith =>
      _$VillaAddressCopyWithImpl<VillaAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String apartment,
            String id,
            String building,
            String floor,
            String city,
            String zone,
            String street,
            String mobilePhoneNumber)
        buildingAddress,
    required TResult Function(String villa, String city, String id, String zone,
            String street, String mobilePhoneNumber)
        villaAddress,
  }) {
    return villaAddress(villa, city, id, zone, street, mobilePhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String apartment, String id, String building, String floor,
            String city, String zone, String street, String mobilePhoneNumber)?
        buildingAddress,
    TResult Function(String villa, String city, String id, String zone,
            String street, String mobilePhoneNumber)?
        villaAddress,
  }) {
    return villaAddress?.call(villa, city, id, zone, street, mobilePhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String apartment, String id, String building, String floor,
            String city, String zone, String street, String mobilePhoneNumber)?
        buildingAddress,
    TResult Function(String villa, String city, String id, String zone,
            String street, String mobilePhoneNumber)?
        villaAddress,
    required TResult orElse(),
  }) {
    if (villaAddress != null) {
      return villaAddress(villa, city, id, zone, street, mobilePhoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BuildingAddress value) buildingAddress,
    required TResult Function(VillaAddress value) villaAddress,
  }) {
    return villaAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BuildingAddress value)? buildingAddress,
    TResult Function(VillaAddress value)? villaAddress,
  }) {
    return villaAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuildingAddress value)? buildingAddress,
    TResult Function(VillaAddress value)? villaAddress,
    required TResult orElse(),
  }) {
    if (villaAddress != null) {
      return villaAddress(this);
    }
    return orElse();
  }
}

abstract class VillaAddress implements Address {
  factory VillaAddress(
      {required String villa,
      required String city,
      required String id,
      required String zone,
      required String street,
      required String mobilePhoneNumber}) = _$VillaAddress;

  String get villa => throw _privateConstructorUsedError;
  @override
  String get city => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get zone => throw _privateConstructorUsedError;
  @override
  String get street => throw _privateConstructorUsedError;
  @override
  String get mobilePhoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $VillaAddressCopyWith<VillaAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
