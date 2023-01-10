import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/colors.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:sizer/sizer.dart';

class Delete1 extends StatefulWidget {
  const Delete1({Key? key}) : super(key: key);

  @override
  State<Delete1> createState() => _Delete1State();
}

class _Delete1State extends State<Delete1> {
  var photos = [
    'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp',
    'https://images.unsplash.com/photo-1544168190-79c17527004f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80',
    'https://media.istockphoto.com/id/1007763808/photo/portrait-of-handsome-latino-african-man.jpg?s=612x612&w=0&k=20&c=XPL1ukeC99OY8HBfNa_njDujOPf9Xz4yCEOo7O3evU0=',
    'https://api.time.com/wp-content/uploads/2017/12/joey-degrandis-hsam-memory.jpg',
    
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJxv0P4qDS_KAn-lIeyKpOSVEM87pPKbIVIQ&usqp=CAU',
    'https://i.gremicdn.pl/image/free/4104b01f2c33bd2758e86f296b92d03d/?t=crop:1313:814:nowe:0:37.075845974329,resize:fill:408:255,enlarge:1',
    'https://media.istockphoto.com/id/1009749608/photo/young-woman-portrait-in-the-city.jpg?s=612x612&w=0&k=20&c=nBmdXrCkI6Zz-J1EkCGQAamaYlZeIOQAtKunC4WMT-U=',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSejyWxg3_4iE9iSY9SuGG4Yhy2Hm3Tk_rxHg&usqp=CAU',
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://cdn.pixabay.com/photo/2017/06/20/22/14/man-2425121__340.jpg',
    'https://cdn.stocksnap.io/img-thumbs/280h/businessmeeting-people_QVIEE1UZSX.jpg',
    'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp',
    'https://images.unsplash.com/photo-1544168190-79c17527004f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80',
    'https://media.istockphoto.com/id/1007763808/photo/portrait-of-handsome-latino-african-man.jpg?s=612x612&w=0&k=20&c=XPL1ukeC99OY8HBfNa_njDujOPf9Xz4yCEOo7O3evU0=',
    'https://api.time.com/wp-content/uploads/2017/12/joey-degrandis-hsam-memory.jpg',
   
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJxv0P4qDS_KAn-lIeyKpOSVEM87pPKbIVIQ&usqp=CAU',
    'https://i.gremicdn.pl/image/free/4104b01f2c33bd2758e86f296b92d03d/?t=crop:1313:814:nowe:0:37.075845974329,resize:fill:408:255,enlarge:1',
    'https://media.istockphoto.com/id/1009749608/photo/young-woman-portrait-in-the-city.jpg?s=612x612&w=0&k=20&c=nBmdXrCkI6Zz-J1EkCGQAamaYlZeIOQAtKunC4WMT-U=',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSejyWxg3_4iE9iSY9SuGG4Yhy2Hm3Tk_rxHg&usqp=CAU',
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://cdn.pixabay.com/photo/2017/06/20/22/14/man-2425121__340.jpg',
    'https://cdn.stocksnap.io/img-thumbs/280h/businessmeeting-people_QVIEE1UZSX.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 7.h,
          automaticallyImplyLeading: false,
          titleSpacing: -2.sp,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Delete',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: customTextColor,
                  fontSize: 15.sp)),
          leading: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Iconify(
                Mdi.arrow_back,
                color: primaryColorOfApp,
              )),
        ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 4, mainAxisSpacing: 4, crossAxisCount: 3),
            scrollDirection: Axis.vertical,
            itemCount: photos.length,
            itemBuilder: (_, i) {
              return Container(
                /*       width: 200, */
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: NetworkImage(photos[i]), fit: BoxFit.cover),
                ),
              );
            }),
      ),
    );
  }
}
