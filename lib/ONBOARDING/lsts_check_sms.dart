// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/account_type/accounttype.dart';
import 'package:flutter_application_1/account_type/uploadimage.dart';
import 'package:flutter_application_1/getx/smsautofill.dart';
import 'package:flutter_application_1/globals/colors.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
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
    // ignore: todo
    // TODO: implement initState
    super.initState();
    listenOtp();
  }

  void listenOtp() async {
    SmsAutoFill().listenForCode;
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
  bool otpVariable = false;
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
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
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
            const SizedBox(
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
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: PinCodeTextField(
                cursorHeight: 20,
                appContext: context,
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                cursorColor: primaryColorOfApp,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  borderWidth: 0.5,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  inactiveColor: customTextColor,
                  activeColor: primaryColorOfApp,
                  selectedColor: customTextColor,
                  selectedFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  fieldHeight: 40,
                  fieldWidth: 40,
                  activeFillColor: const Color(0xffDFEEFC),
                ),
                animationDuration: const Duration(milliseconds: 300),
                backgroundColor: Colors.white,
                enableActiveFill: true,
                /* errorAnimationController: errorController,
  controller: textEditingController, */
                onCompleted: (v) {
                  print("Completed");
                },
                onChanged: (value) {
                  print(value);
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            OtpTextField(
              cursorColor: primaryColorOfApp,
              clearText: true,
              showCursor: true,
              onCodeChanged: (value) {
                setState(() {
                  checktoken = token;
                  otpVariable = true;
                });
              },
              autoFocus: true,
              filled: true,
              margin: const EdgeInsets.only(right: 3.0),
              fieldWidth: 44,
              fillColor: otpVariable ? const Color(0xffDFEEFC) : Colors.white,
              borderWidth: 0.5,
              focusedBorderColor: primaryColorOfApp,
              numberOfFields: 6,
              enabledBorderColor: customTextColor,
              borderColor: customTextColor,
              showFieldAsBox: true,
              onSubmit: (verificationCode) {
                setState(() {
                  checktoken = verificationCode;
                });
                if (verificationCode.length != 6) {
                  setState(() {
                    check6digit = true;
                  });
                } else {
                  setState(() {
                    check6digit = false;
                  });
                }
              },
            ),
            const SizedBox(
              height: 50,
            ),
            /*   Obx(() => */ PinFieldAutoFill(
              cursor: Cursor(color: primaryColorOfApp, enabled: true, width: 2),
              textInputAction: TextInputAction.done,
              controller: controller.otpEditingController,
              decoration: UnderlineDecoration(
                textStyle:
                    const TextStyle(fontSize: 16, color: customTextColor),
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
            const SizedBox(
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
