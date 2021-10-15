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

  _LoginState call(
      {required EmailInput emailInput,
      required PasswordInput passwordInput,
      required SubmissionState<AuthFailure> submissionState}) {
    return _LoginState(
      emailInput: emailInput,
      passwordInput: passwordInput,
      submissionState: submissionState,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  EmailInput get emailInput => throw _privateConstructorUsedError;
  PasswordInput get passwordInput => throw _privateConstructorUsedError;
  SubmissionState<AuthFailure> get submissionState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {EmailInput emailInput,
      PasswordInput passwordInput,
      SubmissionState<AuthFailure> submissionState});

  $SubmissionStateCopyWith<AuthFailure, $Res> get submissionState;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? emailInput = freezed,
    Object? passwordInput = freezed,
    Object? submissionState = freezed,
  }) {
    return _then(_value.copyWith(
      emailInput: emailInput == freezed
          ? _value.emailInput
          : emailInput // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      passwordInput: passwordInput == freezed
          ? _value.passwordInput
          : passwordInput // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      submissionState: submissionState == freezed
          ? _value.submissionState
          : submissionState // ignore: cast_nullable_to_non_nullable
              as SubmissionState<AuthFailure>,
    ));
  }

  @override
  $SubmissionStateCopyWith<AuthFailure, $Res> get submissionState {
    return $SubmissionStateCopyWith<AuthFailure, $Res>(_value.submissionState,
        (value) {
      return _then(_value.copyWith(submissionState: value));
    });
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailInput emailInput,
      PasswordInput passwordInput,
      SubmissionState<AuthFailure> submissionState});

  @override
  $SubmissionStateCopyWith<AuthFailure, $Res> get submissionState;
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object? emailInput = freezed,
    Object? passwordInput = freezed,
    Object? submissionState = freezed,
  }) {
    return _then(_LoginState(
      emailInput: emailInput == freezed
          ? _value.emailInput
          : emailInput // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      passwordInput: passwordInput == freezed
          ? _value.passwordInput
          : passwordInput // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      submissionState: submissionState == freezed
          ? _value.submissionState
          : submissionState // ignore: cast_nullable_to_non_nullable
              as SubmissionState<AuthFailure>,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {required this.emailInput,
      required this.passwordInput,
      required this.submissionState});

  @override
  final EmailInput emailInput;
  @override
  final PasswordInput passwordInput;
  @override
  final SubmissionState<AuthFailure> submissionState;

  @override
  String toString() {
    return 'LoginState(emailInput: $emailInput, passwordInput: $passwordInput, submissionState: $submissionState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.emailInput, emailInput) ||
                const DeepCollectionEquality()
                    .equals(other.emailInput, emailInput)) &&
            (identical(other.passwordInput, passwordInput) ||
                const DeepCollectionEquality()
                    .equals(other.passwordInput, passwordInput)) &&
            (identical(other.submissionState, submissionState) ||
                const DeepCollectionEquality()
                    .equals(other.submissionState, submissionState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailInput) ^
      const DeepCollectionEquality().hash(passwordInput) ^
      const DeepCollectionEquality().hash(submissionState);

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required EmailInput emailInput,
      required PasswordInput passwordInput,
      required SubmissionState<AuthFailure> submissionState}) = _$_LoginState;

  @override
  EmailInput get emailInput => throw _privateConstructorUsedError;
  @override
  PasswordInput get passwordInput => throw _privateConstructorUsedError;
  @override
  SubmissionState<AuthFailure> get submissionState =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
