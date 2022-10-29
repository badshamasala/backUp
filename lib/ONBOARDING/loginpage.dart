import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GOOGLE%20LOGIN/googleprovider.dart';
import 'package:flutter_application_1/ONBOARDING/phonenumber.dart';
import 'package:flutter_application_1/homepage/homepage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

var abc = "";

class _LoginPageState extends State<LoginPage> {
  Future loginmethod(String value1, String value2) async {
    final response = await http.post(
      Uri.parse('http://103.69.242.42:8080/TestAPI/Auth.svc/authenticateUser'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
          {"api_key": "myttube123456", "user_id": value1, "password": value2}),
    );
    var jsondata = jsonDecode(response.body);
    print(response.body);

    var status = jsondata[0]["status"];
    print(status);

    if (status == "True") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      Fluttertoast.showToast(
          msg: "Invalid Credentials",
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  bool email = false;
  bool mobile = false;
  @override
  void initState() {
    super.initState();
    username = TextEditingController();
    password = TextEditingController();
    username.addListener(() {
      final isbuttonactive = username.text.isNotEmpty;

      setState(() {
        this.isbuttonactive = isbuttonactive;
      });
    });
    /* password.addListener(() {
      final isbuttonactive2 = password.text.isNotEmpty;

      setState(() {
        this.isbuttonactive2 = isbuttonactive;
      });
    }); */
  }

  var password = TextEditingController();

  var username = TextEditingController();
  bool isbuttonactive = false;
  bool isbuttonactive2 = false;

  var size, height, width;
  bool obscure = true;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              Center(child: SvgPicture.asset('assets/new.svg')),
              SizedBox(
                height: height * 0.03,
              ),
              TextField(
                controller: username,
                decoration: InputDecoration(
                  labelText: 'Enter Your Username',
                  labelStyle: const TextStyle(
                      color: Colors.black, fontFamily: 'Poppins', fontSize: 12),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Color(0xff333333), width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Color(0xff0087FF), width: 1)),
                  /*  suffixIcon: const Icon(Icons.check), */
                  // hintText: 'Enter Your Username',
                  contentPadding: const EdgeInsets.all(15),
                  /*  border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff0087FF),
                            ),
                            borderRadius: BorderRadius.circular(16)
                            ) */
                ),
                onChanged: (value) {
                  // do something
                },
              ),
              SizedBox(
                height: height * 0.02,
              ),
              TextField(
                controller: password,
                obscureText: obscure,
                decoration: InputDecoration(
                  labelText: 'Enter Password',
                  labelStyle: const TextStyle(
                      color: Colors.black, fontFamily: 'Poppins', fontSize: 12),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Color(0xff333333), width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Color(0xff0087FF), width: 1)),
                  suffixIcon: GestureDetector(
                    child:
                        Icon(obscure ? Icons.visibility_off : Icons.visibility),
                    onTap: () {
                      setState(() {
                        obscure = !obscure;
                      });
                    },
                  ),
                  // hintText: 'Enter Password',
                  contentPadding: const EdgeInsets.all(15),
                  /*  border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff0087FF),
                            ),
                            borderRadius: BorderRadius.circular(15)) */
                ),
                onChanged: (value) {
                  // do something
                },
              ),
              /* SizedBox(
                height: height * 0.03,
              ), */
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            // <-- SEE HERE
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20.0),
                            ),
                          ),
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          icon: Icon(
                                            Icons.arrow_back,
                                            color: primaryColorOfApp,
                                          )),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Forgot Password',
                                        style: TextStyle(
                                            color: customTextColor,
                                            fontFamily: 'Poppins'),
                                      )
                                    ],
                                  ),
                                  Divider(),
                                  SizedBox(
                                    height: height * 0.03,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: TextFormField(
                                      decoration: buildInputdecoration(
                                          'Enter given username Name'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.04,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          'Select one (via verification) for secure your profile',
                                          style: TextStyle(
                                              color: customTextColor,
                                              fontFamily: 'Poppins',
                                              fontSize: 10),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            minimumSize: Size(130, 35),
                                            /*    minimumSize: Size(32, 30), */
                                            elevation: 0,
                                            /* padding: EdgeInsets.zero, */
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            side: BorderSide(
                                              color: email
                                                  ? Color(0xff0087FF)
                                                  : Color(0xff333333),
                                            ),
                                            /*  padding:
                                                    EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                                            backgroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        5.0))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child: Text(
                                            "Email",
                                            style: TextStyle(
                                                color: email
                                                    ? Color(0xff0087FF)
                                                    : Color(0xff333333),
                                                fontSize: 10,
                                                fontFamily: 'Poppins'),
                                          ),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            email = true;
                                            mobile = false;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        width: width * 0.08,
                                      ),
                                      OutlinedButton(
                                        onPressed: () {
                                          setState(() {
                                            mobile = true;
                                            email = false;
                                          });
                                        },
                                        style: OutlinedButton.styleFrom(
                                            minimumSize: Size(130, 35),
                                            /*  minimumSize: Size(32, 30), */
                                            elevation: 0,
                                            /* padding: EdgeInsets.zero, */
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            side: BorderSide(
                                              color: mobile
                                                  ? Color(0xff0087FF)
                                                  : Color(0xff333333),
                                            ),
                                            /*   padding:
                                                    EdgeInsets.symmetric(horizontal: 9.0, vertical: 0), */
                                            backgroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        5.0))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child: Text(
                                            "Mobile",
                                            style: TextStyle(
                                                color: mobile
                                                    ? Color(0xff0087FF)
                                                    : Color(0xff333333),
                                                fontSize: 10,
                                                fontFamily: 'Poppins'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.03,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          'To help keep your profile safe, myttube wants to\n make sure that it’s really you trying to password reset',
                                          style: TextStyle(
                                              color: customTextColor,
                                              fontFamily: 'Poppins',
                                              fontSize: 10),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.04,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 40,
                                    child: ElevatedButton(
                                      onPressed: email == true || mobile == true
                                          ? () {}
                                          : null,
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          minimumSize: const Size(0.0, 40),
                                          // padding: EdgeInsets.symmetric(
                                          //     horizontal: 40.0, vertical: 20.0),
                                          backgroundColor:
                                              const Color(0xff0087FF),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0))),
                                      child: Text(
                                        "Confirm & Continue",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: width * 0.045,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.1,
                                  ),
                                ],
                              );
                            });
                          },
                        );
                      },
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(
                            color: primaryColorOfApp, fontFamily: 'Poppins'),
                      ))
                ],
              ),
              SizedBox(
                width: double.infinity,
                // height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    print('rashid');
                    loginmethod(username.text, password.text);
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      /* minimumSize: const Size(0.0, 40), */
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: 40.0, vertical: 20.0),
                      backgroundColor: const Color(0xff0087FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.023,
                  ),
                  Container(
                    color: const Color(0xff515253),
                    height: height * 0.001,
                    width: width * 0.37,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'OR',
                    style: TextStyle(
                        color: Color(0xff515253), fontFamily: 'Poppins'),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    color: const Color(0xff515253),
                    height: height * 0.001,
                    width: width * 0.37,
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),
              SizedBox(
                /*     height: 45, */
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                  /*   final provider =
                        Provider.of<Googleprovider>(context, listen: false);
                    provider.googlelogin(); */
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      side: const BorderSide(
                        color: Color(0xff0087FF),
                      ),
                      /*   minimumSize: const Size(0, 40), */
                      /*  padding: EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 20.0), */
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/google.png',
                        height: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Continue with Google",
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: const Text(
                      "don\'t have an account?",
                      style: TextStyle(
                          color: Color(0xff515253), fontFamily: 'Poppins'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PhoneNumber()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Color(0xff0087FF),
                      ),
                      /*  padding: EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 20.0), */
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Color(0xff0087FF),
                        fontSize: 18,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              /*   Container(
                    // color: Colors.red,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 10,
                          width: 20,
                          child: Checkbox(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: value,
                              onChanged: (value) {
                                setState(() {
                                  this.value = value!;
                                });
                              }),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'I accepted terms of services & privacy policy and licence agreement?',
                          style: TextStyle(fontSize: 9),
                        )
                      ],
                    ),
                  ) */
            ],
          ),
        ),
      )),
    );
  }

  InputDecoration buildInputdecoration(
    String labeltext,
  ) {
    return InputDecoration(
      /*   errorText: validationService.fullName.error, */
      labelText: labeltext,
      labelStyle: const TextStyle(
          color: Colors.black, fontFamily: 'Poppins', fontSize: 12),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xff333333), width: 1)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xff0087FF), width: 1)),
      /* suffixIcon: suffix, */
      // hintText: 'Enter Your Username',
      contentPadding: const EdgeInsets.all(15),
      /*  border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff0087FF),
                                ),
                                borderRadius: BorderRadius.circular(16)
                                ) */
    );
  }
}
