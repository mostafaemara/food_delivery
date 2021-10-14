import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/application/form_inputs/auth_inputs.dart';

import 'package:food_delivery_app/core/validation_failure.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension EmailInputHelper on EmailInput {
  EmailValidationFailure? getErrorOrNull() {
    if (invalid) {
      return error;
    } else {
      return null;
    }
  }
}

extension PasswordInputHelper on PasswordInput {
  PasswordValidationFailure? getErrorOrNull() {
    if (invalid) {
      return error;
    } else {
      return null;
    }
  }
}

extension ConfirmPasswordInputHelper on ConfirmPasswordInput {
  ConfirmPasswordValidationFailure? getErrorOrNull() {
    if (invalid) {
      return error;
    } else {
      return null;
    }
  }
}

extension UserNameInputHelper on UserNameInput {
  UserNameValidationFailure? getErrorOrNull() {
    if (invalid) {
      return error;
    } else {
      return null;
    }
  }
}

extension EmailValidationFailureHelper on EmailValidationFailure {
  String convertErrorToLocaleString(BuildContext context) {
    return when(
      invalid: () => AppLocalizations.of(context)!.enterValidEmail,
      empty: () => AppLocalizations.of(context)!.enterEmail,
    );
  }
}

extension PasswordValidationFailureHelper on PasswordValidationFailure {
  String convertErrorToLocaleString(BuildContext context) {
    return when(
      shortPassword: () => AppLocalizations.of(context)!.passwordTooShort,
      empty: () => AppLocalizations.of(context)!.enterPassword,
    );
  }
}
