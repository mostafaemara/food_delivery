import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:food_delivery_app/domain/entities/locale.dart';
import 'package:food_delivery_app/domain/entities/theme.dart';

import 'package:food_delivery_app/domain/repositories/first_time_repository_interface.dart';
import 'package:food_delivery_app/domain/repositories/locale_repository_interface.dart';
import 'package:food_delivery_app/domain/repositories/theme_repository_interface.dart';

import 'package:meta/meta.dart';

import '../../../injection.dart';

part 'config_state.dart';

class ConfigCubit extends Cubit<ConfigState> {
  final LocaleRepositoryInterface _localeRepo =
      locator<LocaleRepositoryInterface>();
  final ThemeRepositoryInterface _themeRepo =
      locator<ThemeRepositoryInterface>();
  final FirstTimeRepositoryInterface _firstTimeRepo =
      locator<FirstTimeRepositoryInterface>();

  ConfigCubit()
      : super(const ConfigState(
            locale: Locale(Locales.english),
            theme: Theme(ThemeMode.light),
            isFirstTime: false,
            status: ConfigStatus.notInit));
  void initConfig() async {
    final localeOrNone = await _localeRepo.getLocale();

    final themeOrNone = await _themeRepo.getTheme();
    final isFirstTime = await _firstTimeRepo.getFirstTime();
    emit(state.copyWith(
        locale: localeOrNone.getOrElse(() => const Locale(Locales.english)),
        theme: themeOrNone.getOrElse(() => const Theme(ThemeMode.light)),
        status: ConfigStatus.init,
        isFirstTime: isFirstTime));
  }

  void selectLocale(Locale locale) async {
    await _localeRepo.setLocale(locale);

    emit(state.copyWith(locale: locale));
  }

  void setFirstTime(bool isFirstTime) async {
    await _firstTimeRepo.setFirstTime(isFirstTime);
    emit(state.copyWith(isFirstTime: isFirstTime));
  }

  void selectTheme(Theme theme) async {
    await _themeRepo.setTheme(theme);
    emit(state.copyWith(theme: theme));
  }
}
