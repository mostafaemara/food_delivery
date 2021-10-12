import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:food_delivery_app/presentation/bloc/login/login_cubit.dart';
import 'package:food_delivery_app/presentation/routes/router.gr.dart';

import 'package:food_delivery_app/presentation/routes/routes.dart';
import 'package:food_delivery_app/presentation/widgets/error_dialog.dart';
import 'package:food_delivery_app/presentation/widgets/loading_dialog.dart';

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

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  AppLocalizations.of(context)!.loginToMyAccount,
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
                  AppLocalizations.of(context)!.goodToSeeYouAgain,
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
                onChanged: BlocProvider.of<LoginCubit>(context).emailChanged,
                decoration: InputDecoration(
                    errorText: state.email.fold(
                        (error) => error.when(
                              invalid: () =>
                                  AppLocalizations.of(context)!.enterValidEmail,
                              empty: () =>
                                  AppLocalizations.of(context)!.enterEmail,
                            ),
                        (r) => null),
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
                onChanged: BlocProvider.of<LoginCubit>(context).passwordChanged,
                decoration: InputDecoration(
                    errorText: state.password.fold(
                        (error) => error.when(
                              shortPassword: () => AppLocalizations.of(context)!
                                  .passwordTooShort,
                              empty: () =>
                                  AppLocalizations.of(context)!.enterPassword,
                            ),
                        (r) => null),
                    hintText: AppLocalizations.of(context)!.enterPassword),
              ),
              Container(
                alignment: AlignmentDirectional.centerStart,
                child: TextButton(
                  child: Text(
                    AppLocalizations.of(context)!.forgotPassword,
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(Routes.forgotPasswordScreen);
                  },
                ),
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
                      //    BlocProvider.of<LoginCubit>(context).signinWithGoogle();
                    },
                    icon: Image.asset(
                      "assets/images/google_logo.png",
                      height: 30,
                      width: 30,
                    ),
                    label:
                        Text(AppLocalizations.of(context)!.signInWithGoogle)),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<LoginCubit>(context)
                        .loginWithEmailAndPassword();
                  },
                  child: Text(AppLocalizations.of(context)!.login),
                  style:
                      Theme.of(context).elevatedButtonTheme.style!.copyWith(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                child: TextButton(
                  child: Text(AppLocalizations.of(context)!.createAccount),
                  onPressed: () {
                    context.navigateTo(const SignupRoute());
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        );
      },
      listener: (context, state) {
        if (state.isSubmitting) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => const LoadingDialog(),
          );
        }
        if (state.isSuccess) {
          context.replaceRoute(const MainRoute());
        }
        state.failure.fold(() => null, (failure) {
          failure.maybeWhen(
            worngEmailOrPassword: () {
              showErrorDialog(context,
                  AppLocalizations.of(context)!.emailOrPasswordIncorrect);
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
