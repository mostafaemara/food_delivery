import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/core/validation_failure.dart';
import 'package:food_delivery_app/presentation/auth/bloc/login/login_cubit.dart';
import 'package:food_delivery_app/presentation/routes/routes.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

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
                    errorText: state.email.fold((l) {
                      if (l is InvalidEmail) {
                        return "Please enter valid email";
                      }
                      if (l is Empty) {
                        return "Please enter email";
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
                onChanged: BlocProvider.of<LoginCubit>(context).passwordChanged,
                decoration: InputDecoration(
                    errorText: state.password.fold((l) {
                      if (l is ShortPassword) {
                        return "password too short";
                      }
                      if (l is Empty) {
                        return "Please enter password";
                      }
                    }, (r) => null),
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
            ],
          ),
        );
      },
      listener: (context, state) {
        if (state.status == LoginStatus.error) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Somthing Went Wrong!"),
          ));
        }
      },
    );
  }
}
