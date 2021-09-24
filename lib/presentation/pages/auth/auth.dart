import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:food_delivery_app/presentation/bloc/login/login_cubit.dart';
import 'package:food_delivery_app/presentation/bloc/signup/cubit/signup_cubit.dart';

import 'package:food_delivery_app/presentation/routes/routes.dart';

import 'widgets/sign_in_form.dart';
import 'widgets/signup_form.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isSignUp = false;

  Widget _buildAuthForm() {
    if (isSignUp) {
      return const SignUpForm();
    } else {
      return const SignInForm();
    }
  }

  @override
  void didChangeDependencies() {
    // isSignUp = ModalRoute.of(context)!.settings.arguments as bool;
    isSignUp = true;
    super.didChangeDependencies();
  }

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
                      Navigator.of(context)
                          .pushReplacementNamed(Routes.mainScreen);
                    },
                    child: Text(AppLocalizations.of(context)!.skip)),
              ),
              const SizedBox(
                height: 20,
              ),
              _buildAuthForm(),
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
                    if (isSignUp) {
                      BlocProvider.of<SignupCubit>(context).signUp();
                    } else {
                      BlocProvider.of<LoginCubit>(context).login();
                    }
                  },
                  child: Text(isSignUp
                      ? AppLocalizations.of(context)!.createAnAccount
                      : AppLocalizations.of(context)!.login),
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
                  child: Text(isSignUp
                      ? AppLocalizations.of(context)!.loginToMyAccount
                      : AppLocalizations.of(context)!.createAccount),
                  onPressed: () {
                    setState(() {
                      isSignUp = !isSignUp;
                    });
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
