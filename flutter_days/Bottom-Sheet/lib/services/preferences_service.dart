import 'package:shared_preferences/shared_preferences.dart';
import '../models/time_period_model.dart';

class PreferencesService {
  static Future<void> saveData(
      int percentage, bool isIncrement, List<TimePeriod> timePeriods) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('percentage', percentage);
    prefs.setBool('isIncrement', isIncrement);
    prefs.setStringList(
      'timePeriods',
      timePeriods.map((e) => "${e.label}:${e.isSelected}").toList(),
    );
  }
}
