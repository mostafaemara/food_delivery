import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/auth/bloc/auth/auth_bloc.dart';
import 'package:food_delivery_app/presentation/routes/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocListener<AuthBloc, AuthState>(
      child: Center(
        child: Image.asset(
          "assets/images/logo.png",
          width: 400,
        ),
      ),
      listener: (context, state) {
        if (state is AuthInitial) {}
        if (state is Authenticated) {
          Navigator.of(context).pushReplacementNamed(Routes.mainScreen);
        }
        if (state is UnAuthenticated) {
          Navigator.of(context).pushReplacementNamed(Routes.authScreen);
        }
      },
    ));
  }
}
