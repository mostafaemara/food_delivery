import 'package:flutter/widgets.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/domain/failures/validation_failure.dart';
import 'package:food_delivery_app/presentation/inputs/confirm_password_input.dart';
import 'package:food_delivery_app/presentation/inputs/email_input.dart';
import 'package:food_delivery_app/presentation/inputs/password_input.dart';
import 'package:food_delivery_app/presentation/inputs/username_input.dart';

extension UserNameValidationFailureHelper on UserNameValidationFailure {
  String convertErrorToLocaleString(BuildContext context) {
    return when(
      tooShort: () => AppLocalizations.of(context)!.userNameIsTooShort,
      invalid: () => AppLocalizations.of(context)!.invalidUserName,
      empty: () => AppLocalizations.of(context)!.enterUserName,
    );
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

extension ConfirmPasswordValidationFailureHelper
    on ConfirmPasswordValidationFailure {
  String convertErrorToLocaleString(BuildContext context) {
    return when(
      passwordNotMatch: () => AppLocalizations.of(context)!.passwordNotMatch,
      empty: () => AppLocalizations.of(context)!.enterConfirmPassword,
    );
  }
}

extension AddressFieldValidationFailureHelper on AddressFieldValidationFailure {
  String convertErrorToLocaleString(BuildContext context) {
    return when(
      empty: () => AppLocalizations.of(context)!.fieldRequired,
    );
  }
}

extension MobilePhoneNumberValidationFailureHelper
    on MobilePhoneNumberValidationFailure {
  String convertErrorToLocaleString(BuildContext context) {
    return when(
      empty: () => AppLocalizations.of(context)!.fieldRequired,
      invalid: () => AppLocalizations.of(context)!.invalidMobilePhoneNumber,
    );
  }
}
