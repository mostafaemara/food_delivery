import 'package:food_delivery_app/domain/entities/config/theme.dart';

class SPThemeMapper {
  Theme mapStringToTheme(String theme) {
    if (theme == "light") {
      return const Theme(ThemeMode.light);
    } else {
      return const Theme(ThemeMode.dark);
    }
  }

  String mapThemeToString(Theme theme) {
    if (theme.themeMode == ThemeMode.light) {
      return "light";
    } else {
      return "dark";
    }
  }
}
