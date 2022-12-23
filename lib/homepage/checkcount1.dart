import 'package:flutter/material.dart';
import 'package:flutter_application_1/GOOGLE%20LOGIN/googleprovider.dart';
import 'package:flutter_application_1/NEW_FOLDER/history1.dart';
import 'package:provider/provider.dart';

class Checkcount1 extends StatefulWidget {
  const Checkcount1({Key? key}) : super(key: key);

  @override
  State<Checkcount1> createState() => _Checkcount1State();
}

class _Checkcount1State extends State<Checkcount1> {
  bool checkvalue = false;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GetCountImage>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          title: Text(provider.tempList.length == 0
                  ? 'Hi'
                  : context.watch<GetCountImage>().count.toString()
              /*  ? 'Hi'
              : context.watch<GetCountImage>().count.toString() */
              ),
        ),
        body: ListView.separated(
            itemBuilder: ((context, index) {
              return Stack(
                alignment: Alignment.topRight,
                children: [
                  Center(
                    child: SizedBox(
                      /*         color: Colors.deepOrange, */
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        provider.historylist[index].profileImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Checkbox(
                      shape: StadiumBorder(),
                      value: provider.historylist[index].checkValue,
                      onChanged: (value) {
                        setState(() {
                          provider.historylist[index].checkValue = value!;
                        });
                        provider.getUpdate(index);
                      })
                ],
              );
            }),
            separatorBuilder: ((context, index) {
              return Divider();
            }),
            itemCount: provider.historylist.length));
  }
}

class HistoryModal {
  final String profileImage;

  late bool checkValue;

  HistoryModal({
    required this.profileImage,
    required this.checkValue,
  });
}

/* class GetCountImage extends ChangeNotifier {
  List<HistoryModal> badshaList = [
    HistoryModal(profileImage: 'assets/image1.webp', checkValue: false),
    HistoryModal(profileImage: 'assets/image2.jpg', checkValue: false),
    HistoryModal(profileImage: 'assets/image3.jpg', checkValue: false),
  ];
  List tempList = [];

  int get count => tempList.length;

  getUpdate(index) {
    if (tempList.contains(badshaList[index])) {
      tempList.remove(badshaList[index]);
    } else {
      tempList.add(badshaList[index]);
    
    }
    print(tempList.length);
    print(tempList);
    notifyListeners();
  }
} */
