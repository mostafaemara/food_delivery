import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/application/bloc/login/login_cubit.dart';
import 'package:food_delivery_app/domain/validators.dart';

import 'package:food_delivery_app/presentation/helpers/form_helpers.dart';

import 'package:food_delivery_app/presentation/routes/router.gr.dart';

import 'package:food_delivery_app/presentation/routes/routes.dart';
import 'package:food_delivery_app/presentation/widgets/error_dialog.dart';
import 'package:food_delivery_app/presentation/widgets/loading_dialog.dart';

class SignInForm extends StatelessWidget {
  SignInForm({Key? key}) : super(key: key);

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

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String? emailValidator(String? email, BuildContext context) {
    final result = validateEmail(email ?? "");
    return result.fold(
        (failure) => failure.convertErrorToLocaleString(context), (_) => null);
  }

  String? passwordValidator(String? password, BuildContext context) {
    final result = validatePassword(password ?? "");
    return result.fold(
        (failure) => failure.convertErrorToLocaleString(context), (_) => null);
  }

  bool isFormFieldsValid() {
    return formKey.currentState?.validate() ?? false;
  }

  void saveFormFields() {
    formKey.currentState?.save();
  }

  void handleLoginWithEmailAndPassword(BuildContext context) {
    final loginCubit = BlocProvider.of<LoginCubit>(context);

    if (isFormFieldsValid()) {
      saveFormFields();
      loginCubit.loginWithEmailAndPassword(
          emailController.value.text, passwordController.value.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
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
                  padding:
                      const EdgeInsetsDirectional.only(bottom: 8, start: 20),
                  child: Text(
                    AppLocalizations.of(context)!.emailAddress,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                TextFormField(
                  controller: emailController,
                  validator: (value) => emailValidator(value, context),
                  decoration: InputDecoration(
                      hintText: AppLocalizations.of(context)!.enterEmail),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(bottom: 8, start: 20),
                  child: Text(
                    AppLocalizations.of(context)!.password,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                TextFormField(
                  controller: passwordController,
                  validator: (value) => passwordValidator(value, context),
                  obscureText: true,
                  decoration: InputDecoration(
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
                    onPressed: () => handleLoginWithEmailAndPassword(context),
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
          ),
        );
      },
      listener: (context, state) {
        state.maybeWhen(
          orElse: () => null,
          submitting: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => const LoadingDialog(),
            );
          },
          success: () {
            context.replaceRoute(const MainRoute());
          },
          error: (failure) {
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
          },
        );
      },
    );
  }
}
