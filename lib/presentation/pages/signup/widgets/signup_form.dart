import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:food_delivery_app/presentation/bloc/signup/cubit/signup_cubit.dart';

import 'package:food_delivery_app/presentation/routes/router.gr.dart';
import "../../../helpers/form_helpers.dart";
import 'package:food_delivery_app/presentation/widgets/error_dialog.dart';
import 'package:food_delivery_app/presentation/widgets/loading_dialog.dart';

import 'confirm_password_form_field.dart';
import 'email_form_field.dart';
import 'form_subtitle.dart';
import 'form_title.dart';
import 'login_button.dart';
import 'password_form_field.dart';
import 'signin_with_google.dart';
import 'signup_form_button.dart';
import 'username_form_field.dart';

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
    return BlocConsumer<SignupCubit, SignupState>(
      builder: (context, state) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: const [
            FormTitle(),
            SizedBox(
              height: 20,
            ),
            FormSubtitle(),
            SizedBox(
              height: 30,
            ),
            UserNamFormField(),
            SizedBox(
              height: 30,
            ),
            EmailFormField(),
            SizedBox(
              height: 30,
            ),
            PasswordFormField(),
            SizedBox(
              height: 30,
            ),
            ConfirmPasswordFormField(),
            SizedBox(
              height: 30,
            ),
            SigninWithGoogleButton(),
            SizedBox(
              height: 20,
            ),
            SignUpFormButton(),
            SizedBox(
              height: 20,
            ),
            LoginButton(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      listener: (context, state) {
        state.submissionState.whenOrNull(
          submitting: () => showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => const LoadingDialog(),
          ),
          success: () => context.replaceRoute(const MainRoute()),
          failed: (failure) => failure.maybeMap(
            emailAlreadyInUse: (_) {
              showErrorDialog(
                  context, AppLocalizations.of(context)!.emailAlreadyInUse);
            },
            orElse: () {
              showErrorDialog(
                  context, AppLocalizations.of(context)!.serverError);
            },
          ),
        );
      },
    );
  }
}
