import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static String userLoggedInkey = 'LOGGEDINKEY';
  static String userFullNamekey = 'FULLNAMEKEY';
  static String userEmailkey = 'EMAILKEY';
  static String userPasswordkey = 'PASSWORDKEY';






  static String mytubeMobileno = 'MOBILENO';
  static String mytubeUsername = 'USERNAME';
  static String mytubePassword = 'PASSWORD';
  static String mytubeFullname = 'FULLNAME';
  static String mytubeEmail    = 'EMAIL';
  static String mytubeProfile    = 'PROFILE';

  
  
  
  static  savemytubeMobileno(String mobileno) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(mytubeMobileno, mobileno);
  }
  static Future<String?> getmytubeMobileno() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(mytubeMobileno);
  }


//------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------




  
  static  savemytubeUsername(String username) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(mytubeUsername, username);
  }
  static Future<String?> getmytubeUsername() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(mytubeUsername);
  }

//------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------





   static  savemytubePassword(String password) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(mytubePassword, password);
  }
  static Future<String?> getmytubePassword() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(mytubePassword);
  }


  //------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------

  
  
  
  static  savemytubeFullname(String fullname) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(mytubeFullname, fullname);
  }
  static Future<String?> getmytubeFullname() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(mytubeFullname);
  }
//------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------


  static  savemytubeEmail(String email) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(mytubeEmail, email);
  }
  static Future<String?> getmytubeEmail() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(mytubeEmail);
  }


 


//------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------


  static savemytubeProfileImage(String profileimage)   async  {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(mytubeProfile, profileimage);
  }
  static Future<String?> getmytubeProfileImage() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(mytubeProfile);
  }






//------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------










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


