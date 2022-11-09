import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static String userLoggedInkey = 'LOGGEDINKEY';
  static String userFullNamekey = 'FULLNAMEKEY';
  static String userEmailkey = 'EMAILKEY';

  static Future<bool> saveUserFullName(String userfullname) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userFullNamekey, userfullname);
  }
  static Future<bool> saveUserEmail(String useremail) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userEmailkey, useremail);
  }
  static Future<bool> saveUserLoggedInStatus(bool isUserLoggedIn) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setBool(userLoggedInkey, isUserLoggedIn);
  }

    static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInkey);
  }
}


