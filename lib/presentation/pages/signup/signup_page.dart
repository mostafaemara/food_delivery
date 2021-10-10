import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/bloc/login/login_cubit.dart';
import 'package:food_delivery_app/presentation/bloc/signup/cubit/signup_cubit.dart';
import 'package:food_delivery_app/presentation/routes/router.gr.dart';

import 'widgets/signup_form.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: ListView(
            //   crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                alignment: AlignmentDirectional.topEnd,
                padding: const EdgeInsetsDirectional.only(end: 20),
                width: double.infinity,
                child: TextButton(
                    onPressed: () {
                      context.navigateTo(const MainRoute());
                    },
                    child: Text(AppLocalizations.of(context)!.skip)),
              ),
              const SizedBox(
                height: 20,
              ),
              const SignUpForm(),
              Container(
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        onPrimary: Theme.of(context).colorScheme.onSurface,
                        primary: Theme.of(context).colorScheme.surface),
                    onPressed: () {
                      BlocProvider.of<LoginCubit>(context).signinWithGoogle();
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
                    BlocProvider.of<SignupCubit>(context).signUp();
                  },
                  child: Text(AppLocalizations.of(context)!.createAnAccount),
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
      ),
    );
  }
}