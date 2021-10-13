import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/application/bloc/signup/cubit/signup_cubit.dart';

import 'package:food_delivery_app/presentation/routes/router.gr.dart';

import 'package:food_delivery_app/presentation/widgets/error_dialog.dart';
import 'package:food_delivery_app/presentation/widgets/loading_dialog.dart';
import 'package:formz/formz.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);
  void showErrorDialog(BuildContext context, String failure) {
    Navigator.of(context).pop();
    showDialog(
      context: context,
      builder: (context) => ErrorDialog(
        title: AppLocalizations.of(context)!.error,
        body: failure,
      ),
    );
  }

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
                AppLocalizations.of(context)!.userName,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            TextFormField(
              onChanged: signupCubit.userNameChanged,
              decoration: InputDecoration(
                  errorText: state.userName.error!.when(
                    tooShort: () =>
                        AppLocalizations.of(context)!.userNameIsTooShort,
                    invalid: () =>
                        AppLocalizations.of(context)!.invalidUserName,
                    empty: () => AppLocalizations.of(context)!.enterUserName,
                  ),
                  hintText: AppLocalizations.of(context)!.enterUserName),
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
                  errorText: state.email.error!.when(
                    invalid: () =>
                        AppLocalizations.of(context)!.enterValidEmail,
                    empty: () => AppLocalizations.of(context)!.enterEmail,
                  ),
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
              obscureText: true,
              onChanged: signupCubit.passwordChanged,
              decoration: InputDecoration(
                  errorText: state.password.error!.when(
                    shortPassword: () =>
                        AppLocalizations.of(context)!.passwordTooShort,
                    empty: () => AppLocalizations.of(context)!.enterPassword,
                  ),
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
              obscureText: true,
              onChanged: signupCubit.confirmPasswordChanged,
              decoration: InputDecoration(
                  errorText: state.confirmPassword.error!.when(
                    passwordNotMatch: () =>
                        AppLocalizations.of(context)!.passwordNotMatch,
                    empty: () =>
                        AppLocalizations.of(context)!.enterConfirmPassword,
                  ),
                  hintText: AppLocalizations.of(context)!.confirmPassword),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      onPrimary: Theme.of(context).colorScheme.onSurface,
                      primary: Theme.of(context).colorScheme.surface),
                  onPressed: () {
                    // BlocProvider.of<SignupCubit>(context).s;
                  },
                  icon: Image.asset(
                    "assets/images/google_logo.png",
                    height: 30,
                    width: 30,
                  ),
                  label: Text(AppLocalizations.of(context)!.signInWithGoogle)),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  BlocProvider.of<SignupCubit>(context).signUp();
                },
                child: Text(AppLocalizations.of(context)!.createAnAccount),
                style: Theme.of(context).elevatedButtonTheme.style!.copyWith(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              child: TextButton(
                child: Text(AppLocalizations.of(context)!.loginToMyAccount),
                onPressed: () {
                  context.navigateTo(const LoginRoute());
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      listener: (context, state) {
        if (state.formStatus.isSubmissionInProgress) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => const LoadingDialog(),
          );
        }
        if (state.formStatus.isSubmissionSuccess) {
          context.replaceRoute(const MainRoute());
        }
        state.failureOrNone.fold(() => null, (failure) {
          failure.maybeMap(
            emailAlreadyInUse: (_) {
              showErrorDialog(
                  context, AppLocalizations.of(context)!.emailAlreadyInUse);
            },
            orElse: () {
              showErrorDialog(
                  context, AppLocalizations.of(context)!.serverError);
            },
          );
        });
      },
    );
  }
}
