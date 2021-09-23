part of 'config_bloc.dart';

@immutable
class ConfigState extends Equatable {
  final Option<Locale> locale;
  final Option<Theme> theme;

  const ConfigState({required this.locale, required this.theme});

  ConfigState copyWith({Option<Locale>? locale, Option<Theme>? theme}) {
    return ConfigState(
        locale: locale ?? this.locale, theme: theme ?? this.theme);
  }

  @override
  List<Object?> get props => [locale, theme];
}
