import 'package:flutter/material.dart';
import 'package:flutter_application_1/ONBOARDING/phonenumber.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              const Center(
                  child: Image(image: AssetImage('assets/signup.png'))),
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
                  suffixIcon: const Icon(Icons.check),
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
              SizedBox(
                height: height * 0.03,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                // height: 50,
                child: ElevatedButton(
                  onPressed:
                      isbuttonactive /* username.text.isNotEmpty && password.text.isNotEmpty */ ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PhoneNumber()),
                              );
                              /* if( username.text.isNotEmpty && password.text.isNotEmpty){
                      final isbuttonactive = username.text.isNotEmpty;

      setState(() {
        this.isbuttonactive = isbuttonactive;
      });
                    } */
                            }
                          : null,
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: const Size(0.0, 40),
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: 40.0, vertical: 20.0),
                      backgroundColor: const Color(0xff0087FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
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
                height: 45,
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: const FaIcon(
                    FontAwesomeIcons.google,
                    color: Color.fromARGB(255, 235, 26, 85),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      side: const BorderSide(
                        color: Color(0xff0087FF),
                      ),
                      minimumSize: const Size(0, 40),
                      /*  padding: EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 20.0), */
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                height: height * 0.06,
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
}
