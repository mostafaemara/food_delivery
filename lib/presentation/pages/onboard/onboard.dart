import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:food_delivery_app/presentation/bloc/config/config_bloc.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:food_delivery_app/presentation/routes/router.gr.dart';

import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _pageDecoration = PageDecoration(
      titlePadding: const EdgeInsets.all(0),
      imagePadding: const EdgeInsets.all(0),
      titleTextStyle: Theme.of(context).textTheme.headline6!,
    );
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                padding: const EdgeInsetsDirectional.only(end: 12),
                width: double.infinity,
                alignment: AlignmentDirectional.topEnd,
                child: TextButton(
                    onPressed: () {
                      BlocProvider.of<ConfigCubit>(context).setFirstTime(false);
                      context.navigateTo(const MainRoute());
                    },
                    child: Text(AppLocalizations.of(context)!.skip))),
            Expanded(
              child: IntroductionScreen(
                controlsPadding: EdgeInsets.zero,
                showNextButton: false,
                showSkipButton: false,
                showDoneButton: false,
                pages: [
                  PageViewModel(
                      decoration: _pageDecoration,
                      reverse: true,
                      useScrollView: false,
                      image: Image.asset(
                        "assets/images/meals.png",
                      ),
                      title: AppLocalizations.of(context)!.choseFromWideRange,
                      body: ""),
                  PageViewModel(
                    decoration: _pageDecoration,
                    useScrollView: false,
                    image: Image.asset(
                      "assets/images/delivery.png",
                    ),
                    reverse: true,
                    title: AppLocalizations.of(context)!.enjoyInstantDelivery,
                    body: "",
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  BlocProvider.of<ConfigCubit>(context).setFirstTime(false);
                  context.navigateTo(const SignupRoute());
                },
                child: Text(AppLocalizations.of(context)!.createAccount),
                style: Theme.of(context).elevatedButtonTheme.style!.copyWith(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              child: TextButton(
                child: Text(AppLocalizations.of(context)!.login),
                onPressed: () {
                  BlocProvider.of<ConfigCubit>(context).setFirstTime(false);
                  context.navigateTo(const LoginRoute());
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    ));
  }
}
