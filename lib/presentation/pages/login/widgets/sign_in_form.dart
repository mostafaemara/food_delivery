import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/bloc/login/login_cubit.dart';
import 'package:food_delivery_app/presentation/routes/router.gr.dart';
import 'package:food_delivery_app/presentation/widgets/error_dialog.dart';
import 'package:food_delivery_app/presentation/widgets/loading_dialog.dart';
import 'email_form_field.dart';
import 'forgot_password_button.dart';
import 'form_subtitle.dart';
import 'form_title.dart';
import 'login_form_button.dart';
import 'password_form_field.dart';
import 'signin_with_google_button.dart';
import 'signup_button.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

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

  void showLoadingDialog(
    BuildContext context,
  ) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => const LoadingDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: const [
              FormTitle(),
              SizedBox(
                height: 20,
              ),
              FormSubTitle(),
              SizedBox(
                height: 30,
              ),
              EmailFormField(),
              SizedBox(
                height: 30,
              ),
              PasswordFormField(),
              ForgotPasswordButton(),
              SizedBox(
                height: 30,
              ),
              SignInWithGoogleButton(),
              SizedBox(
                height: 20,
              ),
              LoginFormButton(),
              SizedBox(
                height: 20,
              ),
              SignupButton(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        );
      },
      listener: (context, state) {
        state.submissionState.maybeWhen(
          orElse: () => null,
          submitting: () => showLoadingDialog(context),
          success: () => context.replaceRoute(const MainRoute()),
          failed: (failure) => failure.maybeWhen(
            worngEmailOrPassword: () {
              showErrorDialog(context,
                  AppLocalizations.of(context)!.emailOrPasswordIncorrect);
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
