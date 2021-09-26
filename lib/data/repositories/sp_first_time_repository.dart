import 'package:food_delivery_app/domain/repositories/first_time_repository_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SPFirstTimeRepository implements FirstTimeRepositoryInterface {
  final _isFirstTimeKey = "isFirstTime";

  final _prefs = SharedPreferences.getInstance();
  @override
  Future<bool> getFirstTime() async {
    final prefs = await _prefs;
    final isFirstTime = prefs.getBool(_isFirstTimeKey);
    if (isFirstTime == null) {
      return true;
    } else {
      return isFirstTime;
    }
  }

  @override
  Future<void> setFirstTime(bool isFirstTime) async {
    final prefs = await _prefs;
    await prefs.setBool(_isFirstTimeKey, isFirstTime);
  }
}
