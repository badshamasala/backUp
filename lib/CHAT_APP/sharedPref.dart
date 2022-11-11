import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static String userLoggedInkey = 'LOGGEDINKEY';
  static String userFullNamekey = 'FULLNAMEKEY';
  static String userEmailkey = 'EMAILKEY';
  static String userPasswordkey = 'PASSWORDKEY';

  static Future<bool> saveUserFullName(String userfullname) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userFullNamekey, userfullname);
  }







  static /* Future<String?> */ saveUserEmail(String useremail) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userEmailkey, useremail);
  }
  static Future<String?> getUserEmail() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.getString(userEmailkey);
  }





  static /* Future<String> */ saveUserPassword(String userpassword) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userPasswordkey, userpassword);
  }
  static Future<String?> getUserPassword() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.getString(userPasswordkey);
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


