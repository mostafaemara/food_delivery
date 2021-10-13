import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/application/bloc/auth/auth_bloc.dart';
import 'package:food_delivery_app/application/bloc/config/config_bloc.dart';

import 'package:food_delivery_app/presentation/routes/router.gr.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void didChangeDependencies() async {
    BlocProvider.of<ConfigCubit>(context).initConfig();
    BlocProvider.of<AuthBloc>(context).add(const AuthEvent.checkAuth());

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    log(
      BlocProvider.of<ConfigCubit>(context).state.status.toString(),
      name: "Splash",
    );
    return Scaffold(
        body: BlocListener<ConfigCubit, ConfigState>(
            child: Center(
              child: Image.asset(
                "assets/images/logo.png",
                width: 400,
              ),
            ),
            listener: (context, state) {
              log(
                state.toString(),
                name: "Splash",
              );
              if (state.status == ConfigStatus.init) {
                if (state.isFirstTime) {
                  context.replaceRoute(const LanguageSelectionRoute());

//goto onboard screen
                } else {
                  context.replaceRoute((const MainRoute()));
                  //go to main screen

                }
              }
            }));
  }
}
