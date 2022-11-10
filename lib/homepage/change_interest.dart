import 'package:flutter/material.dart';
import 'package:flutter_application_1/ACCOUNT_TYPE/uploadimage.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';

class ChangeInterest extends StatefulWidget {
  const ChangeInterest({Key? key}) : super(key: key);

  @override
  State<ChangeInterest> createState() => _ChangeInterestState();
}

class _ChangeInterestState extends State<ChangeInterest> {
  List changeinterest = [
    'Enternainment',
    'Technologies',
    'Education',
    'Finance',
    'Music',
    'Hollywood',
    'Foods',
    'Events',
    'Gov. & Law',
    'Health',
    'Fashion',
    'Business',
    'Beauty',
    'Lifestyle',
    'Bollywood',
    'Sports',
    'Science',
    'News',
    'Tourism',
    'International',
  ];
  
  List templist = [];
  @override
  Widget build(BuildContext context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: primaryColorOfApp, // <-- SEE HERE
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'Change Interest',
          style: TextStyle(
              color: customTextColor, fontFamily: 'Poppins', fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Choose Your Interest (minimum 5 Options)',
                  style: TextStyle(
                      color: customTextColor,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                )
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            GridView.builder(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 35,
                    /*     childAspectRatio: 3.5, */
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2),
                itemCount: changeinterest.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        if (templist.contains(changeinterest[index])) {
                          templist.remove(changeinterest[index]);
                        } else {
                          templist.add(changeinterest[index]);
                        }
                      });
                      print(templist);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: templist.contains(changeinterest[index])
                                ? primaryColorOfApp
                                : Colors.white,
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                                width: 0.5, color: primaryColorOfApp),
                            shape: BoxShape.rectangle),
                        /*  width: 50, */
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            changeinterest[index],
                            style: TextStyle(
                                color: templist.contains(changeinterest[index])
                                    ? Colors.white
                                    : primaryColorOfApp,
                                fontFamily: 'Poppins'),
                          ),
                        )),
                  );
                }),
            SizedBox(
              height: height * 0.03,
            ),
            SizedBox(
              width: double.infinity,
              // height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    /* minimumSize: const Size(0.0, 40), */
                    // padding: EdgeInsets.symmetric(
                    //     horizontal: 40.0, vertical: 20.0),
                    backgroundColor: const Color(0xff0087FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: UploadImage().radius())),
                child: const Text(
                  "Save Changes",
                  style: TextStyle(
                      color: Colors.white, fontSize: 15, fontFamily: 'Poppins'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
