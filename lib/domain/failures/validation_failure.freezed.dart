// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'validation_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmailValidationFailureTearOff {
  const _$EmailValidationFailureTearOff();

  InvalidEmail invalid() {
    return const InvalidEmail();
  }

  Empty empty() {
    return const Empty();
  }
}

/// @nodoc
const $EmailValidationFailure = _$EmailValidationFailureTearOff();

/// @nodoc
mixin _$EmailValidationFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalid,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalid,
    required TResult Function(Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalid,
    TResult Function(Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalid,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailValidationFailureCopyWith<$Res> {
  factory $EmailValidationFailureCopyWith(EmailValidationFailure value,
          $Res Function(EmailValidationFailure) then) =
      _$EmailValidationFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailValidationFailureCopyWithImpl<$Res>
    implements $EmailValidationFailureCopyWith<$Res> {
  _$EmailValidationFailureCopyWithImpl(this._value, this._then);

  final EmailValidationFailure _value;
  // ignore: unused_field
  final $Res Function(EmailValidationFailure) _then;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<$Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail value, $Res Function(InvalidEmail) then) =
      _$InvalidEmailCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<$Res>
    extends _$EmailValidationFailureCopyWithImpl<$Res>
    implements $InvalidEmailCopyWith<$Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail _value, $Res Function(InvalidEmail) _then)
      : super(_value, (v) => _then(v as InvalidEmail));

  @override
  InvalidEmail get _value => super._value as InvalidEmail;
}

/// @nodoc

class _$InvalidEmail implements InvalidEmail {
  const _$InvalidEmail();

  @override
  String toString() {
    return 'EmailValidationFailure.invalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalid,
    required TResult Function() empty,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
  }) {
    return invalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalid,
    required TResult Function(Empty value) empty,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalid,
    TResult Function(Empty value)? empty,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalid,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements EmailValidationFailure {
  const factory InvalidEmail() = _$InvalidEmail;
}

/// @nodoc
abstract class $EmptyCopyWith<$Res> {
  factory $EmptyCopyWith(Empty value, $Res Function(Empty) then) =
      _$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCopyWithImpl<$Res>
    extends _$EmailValidationFailureCopyWithImpl<$Res>
    implements $EmptyCopyWith<$Res> {
  _$EmptyCopyWithImpl(Empty _value, $Res Function(Empty) _then)
      : super(_value, (v) => _then(v as Empty));

  @override
  Empty get _value => super._value as Empty;
}

/// @nodoc

class _$Empty implements Empty {
  const _$Empty();

  @override
  String toString() {
    return 'EmailValidationFailure.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalid,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalid,
    required TResult Function(Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalid,
    TResult Function(Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalid,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements EmailValidationFailure {
  const factory Empty() = _$Empty;
}

/// @nodoc
class _$PasswordValidationFailureTearOff {
  const _$PasswordValidationFailureTearOff();

  ShortPassword shortPassword() {
    return const ShortPassword();
  }

  EmptyPassword empty() {
    return const EmptyPassword();
  }
}

/// @nodoc
const $PasswordValidationFailure = _$PasswordValidationFailureTearOff();

/// @nodoc
mixin _$PasswordValidationFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() shortPassword,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? shortPassword,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? shortPassword,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShortPassword value) shortPassword,
    required TResult Function(EmptyPassword value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShortPassword value)? shortPassword,
    TResult Function(EmptyPassword value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShortPassword value)? shortPassword,
    TResult Function(EmptyPassword value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordValidationFailureCopyWith<$Res> {
  factory $PasswordValidationFailureCopyWith(PasswordValidationFailure value,
          $Res Function(PasswordValidationFailure) then) =
      _$PasswordValidationFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordValidationFailureCopyWithImpl<$Res>
    implements $PasswordValidationFailureCopyWith<$Res> {
  _$PasswordValidationFailureCopyWithImpl(this._value, this._then);

  final PasswordValidationFailure _value;
  // ignore: unused_field
  final $Res Function(PasswordValidationFailure) _then;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<$Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword value, $Res Function(ShortPassword) then) =
      _$ShortPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<$Res>
    extends _$PasswordValidationFailureCopyWithImpl<$Res>
    implements $ShortPasswordCopyWith<$Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword _value, $Res Function(ShortPassword) _then)
      : super(_value, (v) => _then(v as ShortPassword));

  @override
  ShortPassword get _value => super._value as ShortPassword;
}

/// @nodoc

class _$ShortPassword implements ShortPassword {
  const _$ShortPassword();

  @override
  String toString() {
    return 'PasswordValidationFailure.shortPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShortPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() shortPassword,
    required TResult Function() empty,
  }) {
    return shortPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? shortPassword,
    TResult Function()? empty,
  }) {
    return shortPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? shortPassword,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShortPassword value) shortPassword,
    required TResult Function(EmptyPassword value) empty,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShortPassword value)? shortPassword,
    TResult Function(EmptyPassword value)? empty,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShortPassword value)? shortPassword,
    TResult Function(EmptyPassword value)? empty,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword implements PasswordValidationFailure {
  const factory ShortPassword() = _$ShortPassword;
}

/// @nodoc
abstract class $EmptyPasswordCopyWith<$Res> {
  factory $EmptyPasswordCopyWith(
          EmptyPassword value, $Res Function(EmptyPassword) then) =
      _$EmptyPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyPasswordCopyWithImpl<$Res>
    extends _$PasswordValidationFailureCopyWithImpl<$Res>
    implements $EmptyPasswordCopyWith<$Res> {
  _$EmptyPasswordCopyWithImpl(
      EmptyPassword _value, $Res Function(EmptyPassword) _then)
      : super(_value, (v) => _then(v as EmptyPassword));

  @override
  EmptyPassword get _value => super._value as EmptyPassword;
}

/// @nodoc

class _$EmptyPassword implements EmptyPassword {
  const _$EmptyPassword();

  @override
  String toString() {
    return 'PasswordValidationFailure.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() shortPassword,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? shortPassword,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? shortPassword,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShortPassword value) shortPassword,
    required TResult Function(EmptyPassword value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShortPassword value)? shortPassword,
    TResult Function(EmptyPassword value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShortPassword value)? shortPassword,
    TResult Function(EmptyPassword value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyPassword implements PasswordValidationFailure {
  const factory EmptyPassword() = _$EmptyPassword;
}

/// @nodoc
class _$ConfirmPasswordValidationFailureTearOff {
  const _$ConfirmPasswordValidationFailureTearOff();

  PasswordNotMatch passwordNotMatch() {
    return const PasswordNotMatch();
  }

  EmptyConfirmPassword empty() {
    return const EmptyConfirmPassword();
  }
}

/// @nodoc
const $ConfirmPasswordValidationFailure =
    _$ConfirmPasswordValidationFailureTearOff();

/// @nodoc
mixin _$ConfirmPasswordValidationFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() passwordNotMatch,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? passwordNotMatch,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? passwordNotMatch,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordNotMatch value) passwordNotMatch,
    required TResult Function(EmptyConfirmPassword value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordNotMatch value)? passwordNotMatch,
    TResult Function(EmptyConfirmPassword value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordNotMatch value)? passwordNotMatch,
    TResult Function(EmptyConfirmPassword value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmPasswordValidationFailureCopyWith<$Res> {
  factory $ConfirmPasswordValidationFailureCopyWith(
          ConfirmPasswordValidationFailure value,
          $Res Function(ConfirmPasswordValidationFailure) then) =
      _$ConfirmPasswordValidationFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmPasswordValidationFailureCopyWithImpl<$Res>
    implements $ConfirmPasswordValidationFailureCopyWith<$Res> {
  _$ConfirmPasswordValidationFailureCopyWithImpl(this._value, this._then);

  final ConfirmPasswordValidationFailure _value;
  // ignore: unused_field
  final $Res Function(ConfirmPasswordValidationFailure) _then;
}

/// @nodoc
abstract class $PasswordNotMatchCopyWith<$Res> {
  factory $PasswordNotMatchCopyWith(
          PasswordNotMatch value, $Res Function(PasswordNotMatch) then) =
      _$PasswordNotMatchCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordNotMatchCopyWithImpl<$Res>
    extends _$ConfirmPasswordValidationFailureCopyWithImpl<$Res>
    implements $PasswordNotMatchCopyWith<$Res> {
  _$PasswordNotMatchCopyWithImpl(
      PasswordNotMatch _value, $Res Function(PasswordNotMatch) _then)
      : super(_value, (v) => _then(v as PasswordNotMatch));

  @override
  PasswordNotMatch get _value => super._value as PasswordNotMatch;
}

/// @nodoc

class _$PasswordNotMatch implements PasswordNotMatch {
  const _$PasswordNotMatch();

  @override
  String toString() {
    return 'ConfirmPasswordValidationFailure.passwordNotMatch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PasswordNotMatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() passwordNotMatch,
    required TResult Function() empty,
  }) {
    return passwordNotMatch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? passwordNotMatch,
    TResult Function()? empty,
  }) {
    return passwordNotMatch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? passwordNotMatch,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (passwordNotMatch != null) {
      return passwordNotMatch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordNotMatch value) passwordNotMatch,
    required TResult Function(EmptyConfirmPassword value) empty,
  }) {
    return passwordNotMatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordNotMatch value)? passwordNotMatch,
    TResult Function(EmptyConfirmPassword value)? empty,
  }) {
    return passwordNotMatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordNotMatch value)? passwordNotMatch,
    TResult Function(EmptyConfirmPassword value)? empty,
    required TResult orElse(),
  }) {
    if (passwordNotMatch != null) {
      return passwordNotMatch(this);
    }
    return orElse();
  }
}

abstract class PasswordNotMatch implements ConfirmPasswordValidationFailure {
  const factory PasswordNotMatch() = _$PasswordNotMatch;
}

/// @nodoc
abstract class $EmptyConfirmPasswordCopyWith<$Res> {
  factory $EmptyConfirmPasswordCopyWith(EmptyConfirmPassword value,
          $Res Function(EmptyConfirmPassword) then) =
      _$EmptyConfirmPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyConfirmPasswordCopyWithImpl<$Res>
    extends _$ConfirmPasswordValidationFailureCopyWithImpl<$Res>
    implements $EmptyConfirmPasswordCopyWith<$Res> {
  _$EmptyConfirmPasswordCopyWithImpl(
      EmptyConfirmPassword _value, $Res Function(EmptyConfirmPassword) _then)
      : super(_value, (v) => _then(v as EmptyConfirmPassword));

  @override
  EmptyConfirmPassword get _value => super._value as EmptyConfirmPassword;
}

/// @nodoc

class _$EmptyConfirmPassword implements EmptyConfirmPassword {
  const _$EmptyConfirmPassword();

  @override
  String toString() {
    return 'ConfirmPasswordValidationFailure.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyConfirmPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() passwordNotMatch,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? passwordNotMatch,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? passwordNotMatch,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordNotMatch value) passwordNotMatch,
    required TResult Function(EmptyConfirmPassword value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordNotMatch value)? passwordNotMatch,
    TResult Function(EmptyConfirmPassword value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordNotMatch value)? passwordNotMatch,
    TResult Function(EmptyConfirmPassword value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyConfirmPassword
    implements ConfirmPasswordValidationFailure {
  const factory EmptyConfirmPassword() = _$EmptyConfirmPassword;
}

/// @nodoc
class _$UserNameValidationFailureTearOff {
  const _$UserNameValidationFailureTearOff();

  InvalidUserName invalid() {
    return const InvalidUserName();
  }

  EmptyUserName empty() {
    return const EmptyUserName();
  }

  TooShortUserName tooShort() {
    return const TooShortUserName();
  }
}

/// @nodoc
const $UserNameValidationFailure = _$UserNameValidationFailureTearOff();

/// @nodoc
mixin _$UserNameValidationFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalid,
    required TResult Function() empty,
    required TResult Function() tooShort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
    TResult Function()? tooShort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
    TResult Function()? tooShort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidUserName value) invalid,
    required TResult Function(EmptyUserName value) empty,
    required TResult Function(TooShortUserName value) tooShort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidUserName value)? invalid,
    TResult Function(EmptyUserName value)? empty,
    TResult Function(TooShortUserName value)? tooShort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidUserName value)? invalid,
    TResult Function(EmptyUserName value)? empty,
    TResult Function(TooShortUserName value)? tooShort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNameValidationFailureCopyWith<$Res> {
  factory $UserNameValidationFailureCopyWith(UserNameValidationFailure value,
          $Res Function(UserNameValidationFailure) then) =
      _$UserNameValidationFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserNameValidationFailureCopyWithImpl<$Res>
    implements $UserNameValidationFailureCopyWith<$Res> {
  _$UserNameValidationFailureCopyWithImpl(this._value, this._then);

  final UserNameValidationFailure _value;
  // ignore: unused_field
  final $Res Function(UserNameValidationFailure) _then;
}

/// @nodoc
abstract class $InvalidUserNameCopyWith<$Res> {
  factory $InvalidUserNameCopyWith(
          InvalidUserName value, $Res Function(InvalidUserName) then) =
      _$InvalidUserNameCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidUserNameCopyWithImpl<$Res>
    extends _$UserNameValidationFailureCopyWithImpl<$Res>
    implements $InvalidUserNameCopyWith<$Res> {
  _$InvalidUserNameCopyWithImpl(
      InvalidUserName _value, $Res Function(InvalidUserName) _then)
      : super(_value, (v) => _then(v as InvalidUserName));

  @override
  InvalidUserName get _value => super._value as InvalidUserName;
}

/// @nodoc

class _$InvalidUserName implements InvalidUserName {
  const _$InvalidUserName();

  @override
  String toString() {
    return 'UserNameValidationFailure.invalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidUserName);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalid,
    required TResult Function() empty,
    required TResult Function() tooShort,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
    TResult Function()? tooShort,
  }) {
    return invalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
    TResult Function()? tooShort,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidUserName value) invalid,
    required TResult Function(EmptyUserName value) empty,
    required TResult Function(TooShortUserName value) tooShort,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidUserName value)? invalid,
    TResult Function(EmptyUserName value)? empty,
    TResult Function(TooShortUserName value)? tooShort,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidUserName value)? invalid,
    TResult Function(EmptyUserName value)? empty,
    TResult Function(TooShortUserName value)? tooShort,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class InvalidUserName implements UserNameValidationFailure {
  const factory InvalidUserName() = _$InvalidUserName;
}

/// @nodoc
abstract class $EmptyUserNameCopyWith<$Res> {
  factory $EmptyUserNameCopyWith(
          EmptyUserName value, $Res Function(EmptyUserName) then) =
      _$EmptyUserNameCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyUserNameCopyWithImpl<$Res>
    extends _$UserNameValidationFailureCopyWithImpl<$Res>
    implements $EmptyUserNameCopyWith<$Res> {
  _$EmptyUserNameCopyWithImpl(
      EmptyUserName _value, $Res Function(EmptyUserName) _then)
      : super(_value, (v) => _then(v as EmptyUserName));

  @override
  EmptyUserName get _value => super._value as EmptyUserName;
}

/// @nodoc

class _$EmptyUserName implements EmptyUserName {
  const _$EmptyUserName();

  @override
  String toString() {
    return 'UserNameValidationFailure.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyUserName);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalid,
    required TResult Function() empty,
    required TResult Function() tooShort,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
    TResult Function()? tooShort,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
    TResult Function()? tooShort,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidUserName value) invalid,
    required TResult Function(EmptyUserName value) empty,
    required TResult Function(TooShortUserName value) tooShort,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidUserName value)? invalid,
    TResult Function(EmptyUserName value)? empty,
    TResult Function(TooShortUserName value)? tooShort,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidUserName value)? invalid,
    TResult Function(EmptyUserName value)? empty,
    TResult Function(TooShortUserName value)? tooShort,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyUserName implements UserNameValidationFailure {
  const factory EmptyUserName() = _$EmptyUserName;
}

/// @nodoc
abstract class $TooShortUserNameCopyWith<$Res> {
  factory $TooShortUserNameCopyWith(
          TooShortUserName value, $Res Function(TooShortUserName) then) =
      _$TooShortUserNameCopyWithImpl<$Res>;
}

/// @nodoc
class _$TooShortUserNameCopyWithImpl<$Res>
    extends _$UserNameValidationFailureCopyWithImpl<$Res>
    implements $TooShortUserNameCopyWith<$Res> {
  _$TooShortUserNameCopyWithImpl(
      TooShortUserName _value, $Res Function(TooShortUserName) _then)
      : super(_value, (v) => _then(v as TooShortUserName));

  @override
  TooShortUserName get _value => super._value as TooShortUserName;
}

/// @nodoc

class _$TooShortUserName implements TooShortUserName {
  const _$TooShortUserName();

  @override
  String toString() {
    return 'UserNameValidationFailure.tooShort()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TooShortUserName);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalid,
    required TResult Function() empty,
    required TResult Function() tooShort,
  }) {
    return tooShort();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
    TResult Function()? tooShort,
  }) {
    return tooShort?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
    TResult Function()? tooShort,
    required TResult orElse(),
  }) {
    if (tooShort != null) {
      return tooShort();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidUserName value) invalid,
    required TResult Function(EmptyUserName value) empty,
    required TResult Function(TooShortUserName value) tooShort,
  }) {
    return tooShort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidUserName value)? invalid,
    TResult Function(EmptyUserName value)? empty,
    TResult Function(TooShortUserName value)? tooShort,
  }) {
    return tooShort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidUserName value)? invalid,
    TResult Function(EmptyUserName value)? empty,
    TResult Function(TooShortUserName value)? tooShort,
    required TResult orElse(),
  }) {
    if (tooShort != null) {
      return tooShort(this);
    }
    return orElse();
  }
}

abstract class TooShortUserName implements UserNameValidationFailure {
  const factory TooShortUserName() = _$TooShortUserName;
}

/// @nodoc
class _$MobilePhoneNumberValidationFailureTearOff {
  const _$MobilePhoneNumberValidationFailureTearOff();

  InvalidPhoneNumber invalid() {
    return const InvalidPhoneNumber();
  }

  EmptyPhoneNumber empty() {
    return const EmptyPhoneNumber();
  }
}

/// @nodoc
const $MobilePhoneNumberValidationFailure =
    _$MobilePhoneNumberValidationFailureTearOff();

/// @nodoc
mixin _$MobilePhoneNumberValidationFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalid,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidPhoneNumber value) invalid,
    required TResult Function(EmptyPhoneNumber value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber value)? invalid,
    TResult Function(EmptyPhoneNumber value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber value)? invalid,
    TResult Function(EmptyPhoneNumber value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobilePhoneNumberValidationFailureCopyWith<$Res> {
  factory $MobilePhoneNumberValidationFailureCopyWith(
          MobilePhoneNumberValidationFailure value,
          $Res Function(MobilePhoneNumberValidationFailure) then) =
      _$MobilePhoneNumberValidationFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$MobilePhoneNumberValidationFailureCopyWithImpl<$Res>
    implements $MobilePhoneNumberValidationFailureCopyWith<$Res> {
  _$MobilePhoneNumberValidationFailureCopyWithImpl(this._value, this._then);

  final MobilePhoneNumberValidationFailure _value;
  // ignore: unused_field
  final $Res Function(MobilePhoneNumberValidationFailure) _then;
}

/// @nodoc
abstract class $InvalidPhoneNumberCopyWith<$Res> {
  factory $InvalidPhoneNumberCopyWith(
          InvalidPhoneNumber value, $Res Function(InvalidPhoneNumber) then) =
      _$InvalidPhoneNumberCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidPhoneNumberCopyWithImpl<$Res>
    extends _$MobilePhoneNumberValidationFailureCopyWithImpl<$Res>
    implements $InvalidPhoneNumberCopyWith<$Res> {
  _$InvalidPhoneNumberCopyWithImpl(
      InvalidPhoneNumber _value, $Res Function(InvalidPhoneNumber) _then)
      : super(_value, (v) => _then(v as InvalidPhoneNumber));

  @override
  InvalidPhoneNumber get _value => super._value as InvalidPhoneNumber;
}

/// @nodoc

class _$InvalidPhoneNumber implements InvalidPhoneNumber {
  const _$InvalidPhoneNumber();

  @override
  String toString() {
    return 'MobilePhoneNumberValidationFailure.invalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidPhoneNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalid,
    required TResult Function() empty,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
  }) {
    return invalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidPhoneNumber value) invalid,
    required TResult Function(EmptyPhoneNumber value) empty,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber value)? invalid,
    TResult Function(EmptyPhoneNumber value)? empty,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber value)? invalid,
    TResult Function(EmptyPhoneNumber value)? empty,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNumber
    implements MobilePhoneNumberValidationFailure {
  const factory InvalidPhoneNumber() = _$InvalidPhoneNumber;
}

/// @nodoc
abstract class $EmptyPhoneNumberCopyWith<$Res> {
  factory $EmptyPhoneNumberCopyWith(
          EmptyPhoneNumber value, $Res Function(EmptyPhoneNumber) then) =
      _$EmptyPhoneNumberCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyPhoneNumberCopyWithImpl<$Res>
    extends _$MobilePhoneNumberValidationFailureCopyWithImpl<$Res>
    implements $EmptyPhoneNumberCopyWith<$Res> {
  _$EmptyPhoneNumberCopyWithImpl(
      EmptyPhoneNumber _value, $Res Function(EmptyPhoneNumber) _then)
      : super(_value, (v) => _then(v as EmptyPhoneNumber));

  @override
  EmptyPhoneNumber get _value => super._value as EmptyPhoneNumber;
}

/// @nodoc

class _$EmptyPhoneNumber implements EmptyPhoneNumber {
  const _$EmptyPhoneNumber();

  @override
  String toString() {
    return 'MobilePhoneNumberValidationFailure.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyPhoneNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalid,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalid,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidPhoneNumber value) invalid,
    required TResult Function(EmptyPhoneNumber value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber value)? invalid,
    TResult Function(EmptyPhoneNumber value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber value)? invalid,
    TResult Function(EmptyPhoneNumber value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyPhoneNumber implements MobilePhoneNumberValidationFailure {
  const factory EmptyPhoneNumber() = _$EmptyPhoneNumber;
}

/// @nodoc
class _$AddressFieldValidationFailureTearOff {
  const _$AddressFieldValidationFailureTearOff();

  EmptyAddressField empty() {
    return const EmptyAddressField();
  }
}

/// @nodoc
const $AddressFieldValidationFailure = _$AddressFieldValidationFailureTearOff();

/// @nodoc
mixin _$AddressFieldValidationFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyAddressField value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyAddressField value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyAddressField value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressFieldValidationFailureCopyWith<$Res> {
  factory $AddressFieldValidationFailureCopyWith(
          AddressFieldValidationFailure value,
          $Res Function(AddressFieldValidationFailure) then) =
      _$AddressFieldValidationFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddressFieldValidationFailureCopyWithImpl<$Res>
    implements $AddressFieldValidationFailureCopyWith<$Res> {
  _$AddressFieldValidationFailureCopyWithImpl(this._value, this._then);

  final AddressFieldValidationFailure _value;
  // ignore: unused_field
  final $Res Function(AddressFieldValidationFailure) _then;
}

/// @nodoc
abstract class $EmptyAddressFieldCopyWith<$Res> {
  factory $EmptyAddressFieldCopyWith(
          EmptyAddressField value, $Res Function(EmptyAddressField) then) =
      _$EmptyAddressFieldCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyAddressFieldCopyWithImpl<$Res>
    extends _$AddressFieldValidationFailureCopyWithImpl<$Res>
    implements $EmptyAddressFieldCopyWith<$Res> {
  _$EmptyAddressFieldCopyWithImpl(
      EmptyAddressField _value, $Res Function(EmptyAddressField) _then)
      : super(_value, (v) => _then(v as EmptyAddressField));

  @override
  EmptyAddressField get _value => super._value as EmptyAddressField;
}

/// @nodoc

class _$EmptyAddressField implements EmptyAddressField {
  const _$EmptyAddressField();

  @override
  String toString() {
    return 'AddressFieldValidationFailure.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyAddressField);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyAddressField value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyAddressField value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyAddressField value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyAddressField implements AddressFieldValidationFailure {
  const factory EmptyAddressField() = _$EmptyAddressField;
}
