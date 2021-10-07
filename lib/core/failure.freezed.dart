// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  AuthServerFailure serverFailure() {
    return const AuthServerFailure();
  }

  WorngEmailOrPassword worngEmailOrPassword() {
    return const WorngEmailOrPassword();
  }

  ProcessAborted processAborted() {
    return const ProcessAborted();
  }

  EmailAlreadyInUse emailAlreadyInUse() {
    return const EmailAlreadyInUse();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() worngEmailOrPassword,
    required TResult Function() processAborted,
    required TResult Function() emailAlreadyInUse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? worngEmailOrPassword,
    TResult Function()? processAborted,
    TResult Function()? emailAlreadyInUse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? worngEmailOrPassword,
    TResult Function()? processAborted,
    TResult Function()? emailAlreadyInUse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthServerFailure value) serverFailure,
    required TResult Function(WorngEmailOrPassword value) worngEmailOrPassword,
    required TResult Function(ProcessAborted value) processAborted,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthServerFailure value)? serverFailure,
    TResult Function(WorngEmailOrPassword value)? worngEmailOrPassword,
    TResult Function(ProcessAborted value)? processAborted,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthServerFailure value)? serverFailure,
    TResult Function(WorngEmailOrPassword value)? worngEmailOrPassword,
    TResult Function(ProcessAborted value)? processAborted,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $AuthServerFailureCopyWith<$Res> {
  factory $AuthServerFailureCopyWith(
          AuthServerFailure value, $Res Function(AuthServerFailure) then) =
      _$AuthServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthServerFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $AuthServerFailureCopyWith<$Res> {
  _$AuthServerFailureCopyWithImpl(
      AuthServerFailure _value, $Res Function(AuthServerFailure) _then)
      : super(_value, (v) => _then(v as AuthServerFailure));

  @override
  AuthServerFailure get _value => super._value as AuthServerFailure;
}

/// @nodoc

class _$AuthServerFailure implements AuthServerFailure {
  const _$AuthServerFailure();

  @override
  String toString() {
    return 'AuthFailure.serverFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() worngEmailOrPassword,
    required TResult Function() processAborted,
    required TResult Function() emailAlreadyInUse,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? worngEmailOrPassword,
    TResult Function()? processAborted,
    TResult Function()? emailAlreadyInUse,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? worngEmailOrPassword,
    TResult Function()? processAborted,
    TResult Function()? emailAlreadyInUse,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthServerFailure value) serverFailure,
    required TResult Function(WorngEmailOrPassword value) worngEmailOrPassword,
    required TResult Function(ProcessAborted value) processAborted,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthServerFailure value)? serverFailure,
    TResult Function(WorngEmailOrPassword value)? worngEmailOrPassword,
    TResult Function(ProcessAborted value)? processAborted,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthServerFailure value)? serverFailure,
    TResult Function(WorngEmailOrPassword value)? worngEmailOrPassword,
    TResult Function(ProcessAborted value)? processAborted,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class AuthServerFailure implements AuthFailure {
  const factory AuthServerFailure() = _$AuthServerFailure;
}

/// @nodoc
abstract class $WorngEmailOrPasswordCopyWith<$Res> {
  factory $WorngEmailOrPasswordCopyWith(WorngEmailOrPassword value,
          $Res Function(WorngEmailOrPassword) then) =
      _$WorngEmailOrPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorngEmailOrPasswordCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $WorngEmailOrPasswordCopyWith<$Res> {
  _$WorngEmailOrPasswordCopyWithImpl(
      WorngEmailOrPassword _value, $Res Function(WorngEmailOrPassword) _then)
      : super(_value, (v) => _then(v as WorngEmailOrPassword));

  @override
  WorngEmailOrPassword get _value => super._value as WorngEmailOrPassword;
}

/// @nodoc

class _$WorngEmailOrPassword implements WorngEmailOrPassword {
  const _$WorngEmailOrPassword();

  @override
  String toString() {
    return 'AuthFailure.worngEmailOrPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WorngEmailOrPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() worngEmailOrPassword,
    required TResult Function() processAborted,
    required TResult Function() emailAlreadyInUse,
  }) {
    return worngEmailOrPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? worngEmailOrPassword,
    TResult Function()? processAborted,
    TResult Function()? emailAlreadyInUse,
  }) {
    return worngEmailOrPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? worngEmailOrPassword,
    TResult Function()? processAborted,
    TResult Function()? emailAlreadyInUse,
    required TResult orElse(),
  }) {
    if (worngEmailOrPassword != null) {
      return worngEmailOrPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthServerFailure value) serverFailure,
    required TResult Function(WorngEmailOrPassword value) worngEmailOrPassword,
    required TResult Function(ProcessAborted value) processAborted,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
  }) {
    return worngEmailOrPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthServerFailure value)? serverFailure,
    TResult Function(WorngEmailOrPassword value)? worngEmailOrPassword,
    TResult Function(ProcessAborted value)? processAborted,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
  }) {
    return worngEmailOrPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthServerFailure value)? serverFailure,
    TResult Function(WorngEmailOrPassword value)? worngEmailOrPassword,
    TResult Function(ProcessAborted value)? processAborted,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    required TResult orElse(),
  }) {
    if (worngEmailOrPassword != null) {
      return worngEmailOrPassword(this);
    }
    return orElse();
  }
}

abstract class WorngEmailOrPassword implements AuthFailure {
  const factory WorngEmailOrPassword() = _$WorngEmailOrPassword;
}

/// @nodoc
abstract class $ProcessAbortedCopyWith<$Res> {
  factory $ProcessAbortedCopyWith(
          ProcessAborted value, $Res Function(ProcessAborted) then) =
      _$ProcessAbortedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProcessAbortedCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ProcessAbortedCopyWith<$Res> {
  _$ProcessAbortedCopyWithImpl(
      ProcessAborted _value, $Res Function(ProcessAborted) _then)
      : super(_value, (v) => _then(v as ProcessAborted));

  @override
  ProcessAborted get _value => super._value as ProcessAborted;
}

/// @nodoc

class _$ProcessAborted implements ProcessAborted {
  const _$ProcessAborted();

  @override
  String toString() {
    return 'AuthFailure.processAborted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProcessAborted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() worngEmailOrPassword,
    required TResult Function() processAborted,
    required TResult Function() emailAlreadyInUse,
  }) {
    return processAborted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? worngEmailOrPassword,
    TResult Function()? processAborted,
    TResult Function()? emailAlreadyInUse,
  }) {
    return processAborted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? worngEmailOrPassword,
    TResult Function()? processAborted,
    TResult Function()? emailAlreadyInUse,
    required TResult orElse(),
  }) {
    if (processAborted != null) {
      return processAborted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthServerFailure value) serverFailure,
    required TResult Function(WorngEmailOrPassword value) worngEmailOrPassword,
    required TResult Function(ProcessAborted value) processAborted,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
  }) {
    return processAborted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthServerFailure value)? serverFailure,
    TResult Function(WorngEmailOrPassword value)? worngEmailOrPassword,
    TResult Function(ProcessAborted value)? processAborted,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
  }) {
    return processAborted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthServerFailure value)? serverFailure,
    TResult Function(WorngEmailOrPassword value)? worngEmailOrPassword,
    TResult Function(ProcessAborted value)? processAborted,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    required TResult orElse(),
  }) {
    if (processAborted != null) {
      return processAborted(this);
    }
    return orElse();
  }
}

abstract class ProcessAborted implements AuthFailure {
  const factory ProcessAborted() = _$ProcessAborted;
}

/// @nodoc
abstract class $EmailAlreadyInUseCopyWith<$Res> {
  factory $EmailAlreadyInUseCopyWith(
          EmailAlreadyInUse value, $Res Function(EmailAlreadyInUse) then) =
      _$EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(
      EmailAlreadyInUse _value, $Res Function(EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse));

  @override
  EmailAlreadyInUse get _value => super._value as EmailAlreadyInUse;
}

/// @nodoc

class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() worngEmailOrPassword,
    required TResult Function() processAborted,
    required TResult Function() emailAlreadyInUse,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? worngEmailOrPassword,
    TResult Function()? processAborted,
    TResult Function()? emailAlreadyInUse,
  }) {
    return emailAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? worngEmailOrPassword,
    TResult Function()? processAborted,
    TResult Function()? emailAlreadyInUse,
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
    required TResult Function(AuthServerFailure value) serverFailure,
    required TResult Function(WorngEmailOrPassword value) worngEmailOrPassword,
    required TResult Function(ProcessAborted value) processAborted,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthServerFailure value)? serverFailure,
    TResult Function(WorngEmailOrPassword value)? worngEmailOrPassword,
    TResult Function(ProcessAborted value)? processAborted,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthServerFailure value)? serverFailure,
    TResult Function(WorngEmailOrPassword value)? worngEmailOrPassword,
    TResult Function(ProcessAborted value)? processAborted,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

/// @nodoc
class _$ProfileFailureTearOff {
  const _$ProfileFailureTearOff();

  ProfileServerFailure serverFailure() {
    return const ProfileServerFailure();
  }

  ProfileHasNoData profileHasNoDataFailure() {
    return const ProfileHasNoData();
  }
}

/// @nodoc
const $ProfileFailure = _$ProfileFailureTearOff();

/// @nodoc
mixin _$ProfileFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() profileHasNoDataFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? profileHasNoDataFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? profileHasNoDataFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileServerFailure value) serverFailure,
    required TResult Function(ProfileHasNoData value) profileHasNoDataFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileServerFailure value)? serverFailure,
    TResult Function(ProfileHasNoData value)? profileHasNoDataFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileServerFailure value)? serverFailure,
    TResult Function(ProfileHasNoData value)? profileHasNoDataFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFailureCopyWith<$Res> {
  factory $ProfileFailureCopyWith(
          ProfileFailure value, $Res Function(ProfileFailure) then) =
      _$ProfileFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileFailureCopyWithImpl<$Res>
    implements $ProfileFailureCopyWith<$Res> {
  _$ProfileFailureCopyWithImpl(this._value, this._then);

  final ProfileFailure _value;
  // ignore: unused_field
  final $Res Function(ProfileFailure) _then;
}

/// @nodoc
abstract class $ProfileServerFailureCopyWith<$Res> {
  factory $ProfileServerFailureCopyWith(ProfileServerFailure value,
          $Res Function(ProfileServerFailure) then) =
      _$ProfileServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileServerFailureCopyWithImpl<$Res>
    extends _$ProfileFailureCopyWithImpl<$Res>
    implements $ProfileServerFailureCopyWith<$Res> {
  _$ProfileServerFailureCopyWithImpl(
      ProfileServerFailure _value, $Res Function(ProfileServerFailure) _then)
      : super(_value, (v) => _then(v as ProfileServerFailure));

  @override
  ProfileServerFailure get _value => super._value as ProfileServerFailure;
}

/// @nodoc

class _$ProfileServerFailure implements ProfileServerFailure {
  const _$ProfileServerFailure();

  @override
  String toString() {
    return 'ProfileFailure.serverFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProfileServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() profileHasNoDataFailure,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? profileHasNoDataFailure,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? profileHasNoDataFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileServerFailure value) serverFailure,
    required TResult Function(ProfileHasNoData value) profileHasNoDataFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileServerFailure value)? serverFailure,
    TResult Function(ProfileHasNoData value)? profileHasNoDataFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileServerFailure value)? serverFailure,
    TResult Function(ProfileHasNoData value)? profileHasNoDataFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ProfileServerFailure implements ProfileFailure {
  const factory ProfileServerFailure() = _$ProfileServerFailure;
}

/// @nodoc
abstract class $ProfileHasNoDataCopyWith<$Res> {
  factory $ProfileHasNoDataCopyWith(
          ProfileHasNoData value, $Res Function(ProfileHasNoData) then) =
      _$ProfileHasNoDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileHasNoDataCopyWithImpl<$Res>
    extends _$ProfileFailureCopyWithImpl<$Res>
    implements $ProfileHasNoDataCopyWith<$Res> {
  _$ProfileHasNoDataCopyWithImpl(
      ProfileHasNoData _value, $Res Function(ProfileHasNoData) _then)
      : super(_value, (v) => _then(v as ProfileHasNoData));

  @override
  ProfileHasNoData get _value => super._value as ProfileHasNoData;
}

/// @nodoc

class _$ProfileHasNoData implements ProfileHasNoData {
  const _$ProfileHasNoData();

  @override
  String toString() {
    return 'ProfileFailure.profileHasNoDataFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProfileHasNoData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() profileHasNoDataFailure,
  }) {
    return profileHasNoDataFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? profileHasNoDataFailure,
  }) {
    return profileHasNoDataFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? profileHasNoDataFailure,
    required TResult orElse(),
  }) {
    if (profileHasNoDataFailure != null) {
      return profileHasNoDataFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileServerFailure value) serverFailure,
    required TResult Function(ProfileHasNoData value) profileHasNoDataFailure,
  }) {
    return profileHasNoDataFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileServerFailure value)? serverFailure,
    TResult Function(ProfileHasNoData value)? profileHasNoDataFailure,
  }) {
    return profileHasNoDataFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileServerFailure value)? serverFailure,
    TResult Function(ProfileHasNoData value)? profileHasNoDataFailure,
    required TResult orElse(),
  }) {
    if (profileHasNoDataFailure != null) {
      return profileHasNoDataFailure(this);
    }
    return orElse();
  }
}

abstract class ProfileHasNoData implements ProfileFailure {
  const factory ProfileHasNoData() = _$ProfileHasNoData;
}
