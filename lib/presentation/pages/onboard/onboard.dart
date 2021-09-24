import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/config/config_bloc.dart';

import 'package:food_delivery_app/presentation/routes/routes.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      Navigator.of(context)
                          .pushReplacementNamed(Routes.mainScreen);
                    },
                    child: Text(AppLocalizations.of(context)!.skip))),
            Expanded(
              flex: 4,
              child: IntroductionScreen(
                controlsPadding: EdgeInsets.zero,
                showNextButton: false,
                showSkipButton: false,
                showDoneButton: false,
                pages: [
                  PageViewModel(
                    decoration: const PageDecoration(imageFlex: 2),
                    reverse: true,
                    useScrollView: false,
                    image: Image.asset(
                      "assets/images/meals.png",
                    ),
                    titleWidget: Text(
                      AppLocalizations.of(context)!.choseFromWideRange,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    bodyWidget: Container(
                      height: 0,
                    ),
                  ),
                  PageViewModel(
                    decoration: const PageDecoration(imageFlex: 2),
                    useScrollView: false,
                    image: Image.asset(
                      "assets/images/delivery.png",
                    ),
                    reverse: true,
                    titleWidget: Text(
                      AppLocalizations.of(context)!.enjoyInstantDelivery,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    bodyWidget: Container(
                      height: 0,
                    ),
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
                  Navigator.of(context)
                      .pushReplacementNamed(Routes.authScreen, arguments: true);
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
                  Navigator.of(context).pushReplacementNamed(Routes.authScreen,
                      arguments: false);
                },
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    ));
  }
}
