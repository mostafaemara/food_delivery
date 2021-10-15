import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/bloc/config/config_bloc.dart';

import 'package:food_delivery_app/presentation/routes/router.gr.dart';

import "../../../domain/entities/locale.dart" as domain;

class LanguageSelectionPage extends StatelessWidget {
  const LanguageSelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Text(
                AppLocalizations.of(context)!.chooseYourLanguage,
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 5),
                child: Text(
                  AppLocalizations.of(context)!.pleaseSelectYourLanguage,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Theme.of(context).textTheme.caption!.color),
                ),
              ),
              const Spacer(),
              SvgPicture.asset("assets/images/language.svg",
                  height: 150, semanticsLabel: 'Acme Logo'),
              const Spacer(),
              SizedBox(
                height: 60,
                child: ElevatedButton.icon(
                    onPressed: () {
                      BlocProvider.of<ConfigCubit>(context).selectLocale(
                          const domain.Locale(domain.Locales.english));
                      context.navigateTo(const OnBoardRoute());
                    },
                    icon: const Icon(Icons.language),
                    label: Text(AppLocalizations.of(context)!.english)),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 60,
                child: ElevatedButton.icon(
                    onPressed: () {
                      BlocProvider.of<ConfigCubit>(context).selectLocale(
                          const domain.Locale(domain.Locales.arabic));
                      context.navigateTo(const OnBoardRoute());
                    },
                    icon: Image.asset(
                      "assets/icons/egypt.png",
                      height: 26,
                      width: 26,
                    ),
                    label: Text(AppLocalizations.of(context)!.arabic)),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
