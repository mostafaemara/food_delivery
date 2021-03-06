import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:food_delivery_app/domain/entities/locale.dart';
import 'package:food_delivery_app/domain/entities/theme.dart';

import 'package:food_delivery_app/domain/repositories/config_repository.dart';

import 'package:meta/meta.dart';

import '../../../injection.dart';

part 'config_state.dart';

class ConfigCubit extends Cubit<ConfigState> {
  final ConfigRepository _configRepo = locator<ConfigRepository>();

  ConfigCubit()
      : super(const ConfigState(
            locale: Locale(Locales.english),
            theme: Theme(ThemeMode.light),
            isFirstTime: false,
            status: ConfigStatus.notInit));
  void initConfig() async {
    final localeOrNone = await _configRepo.getLocale();

    final themeOrNone = await _configRepo.getTheme();
    final isFirstTime = await _configRepo.getFirstTime();
    emit(state.copyWith(
        locale: localeOrNone.getOrElse(() => const Locale(Locales.english)),
        theme: themeOrNone.getOrElse(() => const Theme(ThemeMode.light)),
        status: ConfigStatus.init,
        isFirstTime: isFirstTime));
  }

  void selectLocale(Locale locale) async {
    await _configRepo.setLocale(locale);

    emit(state.copyWith(locale: locale));
  }

  void setFirstTime(bool isFirstTime) async {
    await _configRepo.setFirstTime(isFirstTime);
    emit(state.copyWith(isFirstTime: isFirstTime));
  }

  void selectTheme(Theme theme) async {
    await _configRepo.setTheme(theme);
    emit(state.copyWith(theme: theme));
  }
}
