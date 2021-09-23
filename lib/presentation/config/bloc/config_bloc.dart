import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:food_delivery_app/domain/entities/config/locale.dart';
import 'package:food_delivery_app/domain/entities/config/theme.dart';
import 'package:food_delivery_app/domain/repositories/config/locale_repository_interface.dart';

import 'package:meta/meta.dart';

part 'config_state.dart';

class ConfigCubit extends Cubit<ConfigState> {
  final LocaleRepositoryInterface _localeRepo;
//  final ThemeRepositoryInterface _themeRepo;

  ConfigCubit(this._localeRepo
      //, this._themeRepo
      )
      : super(ConfigState(locale: none(), theme: none()));
  void initConfig() async {
    final localeOrNone = await _localeRepo.getLocale();

    //  final themeOrNone = await _themeRepo.getTheme();
    emit(state.copyWith(locale: localeOrNone));
  }

  void selectLocale(Locale locale) async {
    await _localeRepo.setLocale(locale);

    emit(state.copyWith(locale: some(locale)));
  }

  void selectTheme(Theme theme) async {
    //  await _themeRepo.setTheme(theme);
    emit(state.copyWith(theme: some(theme)));
  }
}
