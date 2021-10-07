part of 'config_bloc.dart';

enum ConfigStatus { init, notInit }

@immutable
class ConfigState extends Equatable {
  final ConfigStatus status;
  final Locale locale;
  final Theme theme;
  final bool isFirstTime;
  const ConfigState(
      {required this.status,
      required this.isFirstTime,
      required this.locale,
      required this.theme});

  ConfigState copyWith(
      {bool? isFirstTime, Locale? locale, Theme? theme, ConfigStatus? status}) {
    return ConfigState(
        locale: locale ?? this.locale,
        theme: theme ?? this.theme,
        isFirstTime: isFirstTime ?? this.isFirstTime,
        status: status ?? this.status);
  }

  @override
  List<Object?> get props => [locale, theme, isFirstTime, status];
}
