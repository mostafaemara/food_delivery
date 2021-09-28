
import 'package:food_delivery_app/domain/entities/theme.dart';

class ThemeModel extends Theme {
  const ThemeModel(ThemeMode themeMode) : super(themeMode);

  String themeToString() {
    if (themeMode == ThemeMode.light) {
      return "light";
    } else {
      return "dark";
    }
  }

  factory ThemeModel.fromString(String theme) {
    if (theme == "light") {
      return const ThemeModel(ThemeMode.light);
    } else {
      return const ThemeModel(ThemeMode.dark);
    }
  }
}
