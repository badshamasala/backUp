import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GETX/smsautofill.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GOOGLE%20LOGIN/googleprovider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sms_autofill/sms_autofill.dart';

class Checkphoneauth extends StatefulWidget {
  const Checkphoneauth({Key? key}) : super(key: key);

  @override
  State<Checkphoneauth> createState() => _CheckphoneauthState();
}

class _CheckphoneauthState extends State<Checkphoneauth> {
  final HomeController controller = Get.put(HomeController());
  bool check10number = true;
  bool check6digit = true;
  var phonecont = TextEditingController();
  dynamic phonekanumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          TextFormField(
            autofillHints: const [AutofillHints.telephoneNumberDevice],
            autofocus: true,
            /*  focusNode: focusNode, */
            /* validator: (value) {
                      if (value!.length == 10) {
                        setState(() {
                          check10number = false;
                        });
                      }
                    }, */

            /*    controller: phonecont, */
            textAlign: TextAlign.start,
            maxLength: 10,
            keyboardType: TextInputType.number,
            cursorColor: primaryColorOfApp,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              FilteringTextInputFormatter.deny(RegExp(r'^0+')),
              FilteringTextInputFormatter.deny(RegExp(r'^1+')),
              FilteringTextInputFormatter.deny(RegExp(r'^2+')),
              FilteringTextInputFormatter.deny(RegExp(r'^3+')),
              FilteringTextInputFormatter.deny(RegExp(r'^4+')),
              FilteringTextInputFormatter.deny(RegExp(r'^5+')),
            ],
            decoration: InputDecoration(
              hintText: '8888888888',
              hintStyle: const TextStyle(color: Color(0xffc4c4c4)),
              /* isDense: true, */
              prefixIcon: SizedBox(
                width: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/indianflag1.png',
                        height: 20,
                        width: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Text(
                          "+91",
                          style: TextStyle(
                              color: /*  focusNode.hasFocus
                                          ? */
                                  Colors.black,
                              /* : Color(0xffc4c4c4), */
                              fontFamily: 'Poppins',
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
              labelText: 'Enter your 10 digit Mobile number*',
              labelStyle: const TextStyle(
                  color: /* focusNode.hasFocus
                              ? */
                      Colors.black /* : Color(0xffc4c4c4) */,
                  fontFamily: 'Poppins',
                  fontSize: 12),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      const BorderSide(color: Color(0xff333333), width: 0.5)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      const BorderSide(color: Color(0xff0087FF), width: 0.5)),
              /*     prefixText: '+91', */
              /*     prefixIconColor: Color(0xffc4c4c4c), */
              /* prefixStyle:
                          TextStyle(fontFamily: 'Poppins', fontSize: 15), */
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              // hintText: 'Enter Your Username',
              /*        contentPadding: const EdgeInsets.all(15), */
              /*  border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff0087FF),
                            ),
                            borderRadius: BorderRadius.circular(16)
                            ) */
            ),
            onChanged: (value) {
              phonekanumber = value;
              if (value.length == 10) {
                setState(() {
                  check10number = false;
                });
              } else if (value.length < 10) {
                setState(() {
                  check10number = true;
                });
              }
              // do something
            },
          ),
          SizedBox(
            width: double.infinity,
            // height: 50,
            child: ElevatedButton(
              onPressed: check10number
                  ? null
                  : () async {
                      final provider =
                          Provider.of<Googleprovider>(context, listen: false);
                      await provider.otpmethod(phonekanumber);
                    },
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  /*        minimumSize: const Size(0.0, 40), */
                  // padding: EdgeInsets.symmetric(
                  //     horizontal: 40.0, vertical: 20.0),
                  backgroundColor: const Color(0xff0087FF),
                  shape: RoundedRectangleBorder(
                      borderRadius: const UploadImage().radius())),
              child: const Text(
                "Continue",
                style: TextStyle(
                    color: Colors.white, fontSize: 15, fontFamily: 'Poppins'),
              ),
            ),
          ),
         Obx((() =>
                                                            PinFieldAutoFill(
                                                              textInputAction:
                                                                  TextInputAction
                                                                      .done,
                                                              controller: controller
                                                                  .otpEditingController,
                                                              decoration:
                                                                  UnderlineDecoration(
                                                                textStyle: const TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    color: Colors
                                                                        .blue),
                                                                colorBuilder:
                                                                    const FixedColorBuilder(
                                                                  Colors
                                                                      .transparent,
                                                                ),
                                                                bgColorBuilder:
                                                                    FixedColorBuilder(
                                                                  Colors.grey
                                                                      .withOpacity(
                                                                          0.2),
                                                                ),
                                                              ),
                                                              currentCode:
                                                                  controller
                                                                      .messageOtpCode
                                                                      .value,
                                                              onCodeSubmitted:
                                                                  (code) {},
                                                              onCodeChanged:
                                                                  (code) {
                                                                controller
                                                                    .messageOtpCode
                                                                    .value = code!;
                                                                controller
                                                                    .countdownController
                                                                    .pause();
                                                                if (code.length ==
                                                                    6) {
                                                                  // To perform some operation
                                                                }
                                                              },
                                                            ))),
           SizedBox(
                                                        /*     height: 45, */
                                                        width: double.infinity,
                                                        // height: 50,
                                                        child: ElevatedButton(
                                                          onPressed: check6digit
                                                              ? null
                                                              : () {
                                                                  
                          
                                                                 /*  Navigator
                                                                      .push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder: (context) =>
                                                                            AccountType(
                                                                              value: phonecont.text,
                                                                            )),
                                                                  ); */
                                                                },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                                  elevation: 0,
                                                                  /*      minimumSize: const Size(0.0, 40), */
                                                                  // padding: EdgeInsets.symmetric(
                                                                  //     horizontal: 40.0, vertical: 20.0),
                                                                  backgroundColor:
                                                                      const Color(
                                                                          0xff0087FF),
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0))),
                                                          child: const Text(
                                                            "Verify & Continue",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                                fontFamily:
                                                                    'Poppins'),
                                                          ),
                                                        ),
                                                      ),
        ],
      ),
    );
  }
}
