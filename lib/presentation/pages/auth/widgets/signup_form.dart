import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/core/validation_failure.dart';
import 'package:food_delivery_app/presentation/bloc/signup/cubit/signup_cubit.dart';
import 'package:food_delivery_app/presentation/routes/routes.dart';

import 'error_dialog.dart';
import 'loading_dialog.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signupCubit = BlocProvider.of<SignupCubit>(context);
    return BlocConsumer<SignupCubit, SignupState>(
      builder: (context, state) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                AppLocalizations.of(context)!.createAnAccount,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                AppLocalizations.of(context)!.welcomeEnterYourDetails,
                style: Theme.of(context).textTheme.bodyText2!,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 8, start: 20),
              child: Text(
                AppLocalizations.of(context)!.emailAddress,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            TextFormField(
              onChanged: signupCubit.emailChanged,
              decoration: InputDecoration(
                  errorText: state.emailOrFailure.fold((l) {
                    if (l is InvalidEmail) {
                      return AppLocalizations.of(context)!.enterValidEmail;
                    }
                    if (l is Empty) {
                      return AppLocalizations.of(context)!.enterEmail;
                    }
                  }, (r) => null),
                  hintText: AppLocalizations.of(context)!.enterEmail),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 8, start: 20),
              child: Text(
                AppLocalizations.of(context)!.password,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            TextFormField(
              onChanged: signupCubit.passwordChanged,
              decoration: InputDecoration(
                  errorText: state.passwordOrFailure.fold((l) {
                    if (l is ShortPassword) {
                      return AppLocalizations.of(context)!.passwordTooShort;
                    }
                    if (l is Empty) {
                      return AppLocalizations.of(context)!.enterPassword;
                    }
                  }, (r) => null),
                  hintText: AppLocalizations.of(context)!.enterPassword),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 8, start: 20),
              child: Text(
                AppLocalizations.of(context)!.confirmPassword,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            TextFormField(
              onChanged: signupCubit.confirmePasswordChanged,
              decoration: InputDecoration(
                  errorText: state.confirmPasswordOrFailure.fold((l) {
                    if (l is Empty) {
                      return AppLocalizations.of(context)!.enterConfirmPassword;
                    }
                    if (l is PasswordNotMatch) {
                      return AppLocalizations.of(context)!.passwordNotMatch;
                    }
                  }, (r) => null),
                  hintText: AppLocalizations.of(context)!.confirmPassword),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      listener: (context, state) {
        if (state.status == SignupStatus.submitting) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => const LoadingDialog(),
          );
        }
        if (state.status == SignupStatus.success) {
          Navigator.of(context).pushReplacementNamed(Routes.mainScreen);
        }
        state.failureOrNone.fold(() => null, (f) {
          String failure = "";
          if (f is ServerFailure) {
            failure = AppLocalizations.of(context)!.serverError;
          }

          if (f is EmailAlreadyInUserFailure) {
            failure = AppLocalizations.of(context)!.emailAlreadyInUse;
          }

          Navigator.of(context).pop();
          showDialog(
            context: context,
            builder: (context) => ErrorDialog(
              title: AppLocalizations.of(context)!.error,
              body: failure,
            ),
          );
        });
      },
    );
  }
}