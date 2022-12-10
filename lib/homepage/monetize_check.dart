import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';

class MonetizeCheck extends StatefulWidget {
  const MonetizeCheck({Key? key}) : super(key: key);

  @override
  State<MonetizeCheck> createState() => _MonetizeCheckState();
}

class _MonetizeCheckState extends State<MonetizeCheck> {
  bool switch1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(
          color: primaryColorOfApp, // <-- SEE HERE
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'monetize',
          style: TextStyle(
              color: customTextColor, fontFamily: 'Poppins', fontSize: 15),
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: primaryColorOfApp,
              )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/monetize2.svg',
                  height: 150,
                  width: 300,
                  /*  fit: BoxFit.cover, */
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Required',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: customTextColor,
                      fontSize: 15),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'show your every post/content below',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: customTextColor,
                      fontSize: 10),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'if you are not interested from accepting gift',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: customTextColor,
                      fontSize: 10),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: customTextColor),
                  borderRadius: BorderRadius.circular(5),
                  shape: BoxShape.rectangle),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Please this mode Off',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: customTextColor,
                          fontSize: 10),
                    ),
                  ),
                  Switch.adaptive(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: switch1,
                      onChanged: ((value) {
                        switch1 = value;
                      }))
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'Your profile is not Verify',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: customTextColor,
                      fontSize: 10),
                ),
                Iconify(
                  Bi.patch_check,
                  size: 15,
                  color: Color(0xffED1B24),
                ),
                Text(
                  'send requiest to ',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: customTextColor,
                      fontSize: 10),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Verify',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: primaryColorOfApp,
                        fontSize: 10),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Review',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: customTextColor,
                      fontSize: 10),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.zero),
                  onPressed: () {},
                  child: Text(
                    'terms of services',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: primaryColorOfApp,
                        fontSize: 10),
                  ),
                ),
                Text(
                  '|',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: customTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.zero),
                  onPressed: () {},
                  child: Text(
                    'monetize policy',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: primaryColorOfApp,
                        fontSize: 10),
                  ),
                ),
                Text(
                  '&',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: customTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
              ],
            ),
            Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.zero),
                  onPressed: () {},
                  child: Text(
                    'read more',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: primaryColorOfApp,
                        fontSize: 10),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
