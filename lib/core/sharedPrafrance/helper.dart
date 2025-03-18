import 'package:shared_preferences/shared_preferences.dart';

class LocalDb {
  static late SharedPreferences prefs;

  static Future StartSherd() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future saveUser(String username) async {
    await prefs.setString("user", username);
  }

  static String? getUser()  {
    return prefs.getString("user");
  }

  static Future Cleardata() async {
    await prefs.clear();
  }
}