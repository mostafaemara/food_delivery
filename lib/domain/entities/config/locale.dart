import 'package:equatable/equatable.dart';

enum Locales { english, arabic }

class Locale extends Equatable {
  final Locales locale;

  const Locale(this.locale);

  @override
  List<Object?> get props => [locale];
}
