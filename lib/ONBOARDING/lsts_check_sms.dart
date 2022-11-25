import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/accounttype.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';

import 'package:flutter_application_1/GETX/smsautofill.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/GOOGLE%20LOGIN/googleprovider.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sms_autofill/sms_autofill.dart';

class LstsCheckSms extends StatefulWidget {
  const LstsCheckSms({Key? key}) : super(key: key);

  @override
  State<LstsCheckSms> createState() => _LstsCheckSmsState();
}

class _LstsCheckSmsState extends State<LstsCheckSms> {
  String codeKiValue = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listenOtp();
  }

  void listenOtp() async {
    await SmsAutoFill().listenForCode;
  }

  void submit() async {
    if (phonecont.text == "") return;

    var appSignatureID = await SmsAutoFill().getAppSignature;

    var sendOTtpData = {
      "mobile_no": phonecont.text,
      "app_Signature": appSignatureID,
    };

    print(sendOTtpData);
  }

  bool check10number = true;
  bool check6digit = true;
  bool otplodaing = false;
  var phonecont = TextEditingController();
  dynamic phonekanumber;
  var token = "";
  var checktoken = "";
  var checktoken1 = "";

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            TextFormField(
              autofocus: true,
              controller: phonecont,
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
              cursorHeight: 20,
              decoration: InputDecoration(
                isDense: true,
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
                prefixIconConstraints: const BoxConstraints(),
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
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10.0,
                ),
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
              height: 50,
            ),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: submit,
                /* check10number
                    ? null
                    : () async {
                        submit();
                        setState(() {
                          otplodaing = true;
                        });
                        final provider =
                            Provider.of<Googleprovider>(context, listen: false);
                        token = await provider
                            .otpmethod(phonekanumber)
                            .whenComplete(() {
                          setState(() {
                            otplodaing = false;
                          });
                        });
                      }, */
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color(0xff0087FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: const UploadImage().radius())),
                child: Text(
                  otplodaing ? 'Loading...' : "Continue",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            /*   Obx(() => */ PinFieldAutoFill(
              textInputAction: TextInputAction.done,
              controller: controller.otpEditingController,
              decoration: UnderlineDecoration(
                textStyle: const TextStyle(fontSize: 16, color: Colors.blue),
                colorBuilder: const FixedColorBuilder(
                  Colors.transparent,
                ),
                bgColorBuilder: FixedColorBuilder(
                  Colors.grey.withOpacity(0.2),
                ),
              ),
              currentCode: codeKiValue,
              onCodeSubmitted: (code) {},
              onCodeChanged: (code) {
                /*        controller.messageOtpCode.value = code!;
                    controller.countdownController.pause(); */
                /* if (code.length == 6) {
                      // To perform some operation
                    } */
              },
            ) /* ) */,
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: check6digit
                    ? null
                    : () {
                        if (token == checktoken) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccountType(
                                      value: phonecont.text,
                                    )),
                          );
                        } else {
                          Fluttertoast.showToast(
                              msg: "Wrong OTP",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        }
                      },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    /*      minimumSize: const Size(0.0, 40), */
                    // padding: EdgeInsets.symmetric(
                    //     horizontal: 40.0, vertical: 20.0),
                    backgroundColor: const Color(0xff0087FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0))),
                child: const Text(
                  "Verify & Continue",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
