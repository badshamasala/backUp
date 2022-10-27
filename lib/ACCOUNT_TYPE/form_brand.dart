import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/upload_brand.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';

class FormfillBrand extends StatefulWidget {
  const FormfillBrand({super.key});

  @override
  State<FormfillBrand> createState() => _FormfillBrandState();
}

class _FormfillBrandState extends State<FormfillBrand> {
  final _formKey = GlobalKey<FormState>();
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        body: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  buildstacknumber(),
                  sizedbox1(),
                  SizedBox(
                    height: 40,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Name';
                        }
                        return null;
                      },
                      /* onSaved: ( value){
                          name = value!;
                        }, */
                      decoration: buildInputdecoration('Enter Your Brand Name'),
                    ),
                  ),
                  sizedbox(),
                  SizedBox(
                    height: 40,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Username'; /* showTopSnackBar(
                            context,
                            CustomSnackBar.info(
                              message: "Please Enter username",
                            ),
                          ); */
                        }
                        return null;
                      },
                      decoration: buildInputdecoration('Username'),
                    ),
                  ),
                  sizedbox(),
                  SizedBox(
                    height: 40,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Password';
                        }
                        return null;
                      },
                      obscureText: obscure,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 12),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color(0xff333333), width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color(0xff0087FF), width: 1)),
                        suffixIcon: GestureDetector(
                          child: Icon(obscure
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onTap: () {
                            setState(() {
                              obscure = !obscure;
                            });
                          },
                        ),
                        // hintText: 'Enter Password',
                        contentPadding: const EdgeInsets.all(15),
                      ),
                    ),
                  ),
                  sizedbox1(),
                  SizedBox(
                    width: double.infinity,
                    // height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UploadBrand()),
                          );
                        } else {
                          print('aa');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          minimumSize: const Size(0.0, 40),
                          // padding: EdgeInsets.symmetric(
                          //     horizontal: 40.0, vertical: 20.0),
                          backgroundColor: const Color(0xff0087FF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
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
                  sizedbox()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  buildstacknumber() {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;
    return Column(
      children: [
        /* SizedBox(
          height: height * 0.05,
        ), */
        SizedBox(
          height: 80,
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: 0,
                height: 40,
                width: 288,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 0.5, color: const Color(0xff515253)),
                      borderRadius: BorderRadius.circular(10)),
                  /*  width: 150,
                      height: 150, */
                  /*  color: Colors.green[300], */
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.08,
                      ),
                      const Icon(
                        Icons.lock,
                        color: Color(0xffC4C4C4),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        '+91 8689880061',
                        style: TextStyle(
                            color: const Color(0xffC4C4C4),
                            fontFamily: 'Poppins',
                            fontSize: width * 0.06),
                      ),
                      SizedBox(
                        width: width * 0.18,
                      ),
                      const Icon(
                        Icons.check_circle_outline,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 13,
                left: 30,
                width: 170,
                height: 10,
                child: Container(
                  /*   width: 200,
                      height: 150, */
                  color: Colors.white,
                  child: const Text(
                    'Your 10 digit Mobile number is verified',
                    style: TextStyle(
                        color: Color(0xff515253),
                        fontSize: 10,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.05),
          child: Row(
            children: const [
              Text(
                'this contact won\'t be shared anyone or anywhere',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 10,
                    color: Color(0xff333333)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('change your number anytime',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontSize: width * 0.03)),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'change ?',
                    style: TextStyle(
                        color: Color(
                          0xff0087FF,
                        ),
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ))
            ],
          ),
        ),
        Column(
          children: [
Padding(
          padding: EdgeInsets.only(left: width * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'fill the details',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: Color(0xff515253)),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'grow your business in the world',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: width * 0.045,
                    color: const Color(0xff515253)),
              ),
            ],
          ),
        ),
          ],
        ),
        
      ],
    );
  }

  sizedbox() {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;
    return SizedBox(
      height: height * 0.02,
    );
  }

  sizedbox1() {
    Size size = MediaQuery.of(context).size;
    double height = size.height, width = size.width;
    return SizedBox(
      height: height * 0.04,
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
