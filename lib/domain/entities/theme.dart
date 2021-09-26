import 'package:equatable/equatable.dart';

enum ThemeMode { light, dark }

class Theme extends Equatable {
  final ThemeMode themeMode;

  const Theme(this.themeMode);

  @override
  List<Object?> get props => [themeMode];
}
