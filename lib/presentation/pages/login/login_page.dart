import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/login/login_cubit.dart';
import 'package:food_delivery_app/presentation/routes/router.gr.dart';

import 'widgets/sign_in_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (blocProviderContext) => LoginCubit(
        authBloc: BlocProvider.of<AuthBloc>(context),
      ),
      child: Scaffold(
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
                        context.navigateTo(
                            const MainRoute()); //  Navigator.of(context)
                        //     .pushReplacementNamed(Routes.mainScreen);
                      },
                      child: Text(AppLocalizations.of(context)!.skip)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SignInForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
