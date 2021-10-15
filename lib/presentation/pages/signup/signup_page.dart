import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/signup/cubit/signup_cubit.dart';

import 'widgets/signup_form.dart';
import '../../widgets/skip_button.dart';

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
                child: const SkipButton(),
              ),
              const SizedBox(
                height: 20,
              ),
              BlocProvider(
                create: (context) =>
                    SignupCubit(BlocProvider.of<AuthBloc>(context)),
                child: const SignUpForm(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
