import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_application_1/homepage/widget_profile_page.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/ri.dart';

permissionmethod(context) {
  
  bool emailid = false;
  bool emailid1 = false;
  var groupemail;
  Size size;
  double height, width;
  size = MediaQuery.of(context).size;
  height = size.height;
  width = size.width;
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (context) {
        return DefaultTabController(
          length: 2,
          child: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffE2E2E2),
                                borderRadius: BorderRadius.circular(8)),
                            height: 5,
                            width: 100,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        children: [
                          IconButton(
                              padding: EdgeInsets.all(0),
                              constraints: BoxConstraints(),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: primaryColorOfApp,
                              )),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            'Permission set',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: customTextColor,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      Divider(),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      TabBar(
                        indicatorWeight: 1,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorPadding: EdgeInsets.zero,
                        labelColor: primaryColorOfApp,
                        unselectedLabelColor: const Color(0xff333333),
                        tabs: [
                          Tab(
                            height: 20,
                            child: Text(
                              'Actived',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 12),
                            ),
                          ),
                          Tab(
                            height: 20,
                            child: Text(
                              'New Add',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Divider(),
                      SizedBox(
                        height: 300,
                        child: TabBarView(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffe2e2e2),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Column(
                                    children: [
                                      ListTile(
                                        minVerticalPadding: 10,
                                        horizontalTitleGap: 0.0,
                                        visualDensity:
                                            const VisualDensity(vertical: -3),
                                        dense: true,
                                        leading: CircleAvatar(
                                          radius: 20,
                                          backgroundImage: NetworkImage(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                        ),
                                        title: Text(
                                          'Rajan Mistry-1 ',
                                          style: ProfileSelf().buildtextstyle(),
                                        ),
                                        subtitle: Text(
                                          '@m.rajan02',
                                          style: ProfileSelf().buildtextstyle(),
                                        ),
                                      ),
                                      /*    SizedBox(
                                                                  height: height * 0.01,
                                                                ), */
                                      Divider(),
                                      Text(
                                        'this profile use admin access, post, all access your profile, like you',
                                        style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'Poppins',
                                            color: customTextColor),
                                      ),
                                      /*    SizedBox(
                                                                  height: height * 0.01,
                                                                ), */
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 16.0),
                                            child: Text(
                                              'Admin ',
                                              style: TextStyle(
                                                  color: primaryColorOfApp,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          TextButton(
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              onPressed: () {
                                                showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    shape:
                                                        const RoundedRectangleBorder(
                                                      // <-- SEE HERE
                                                      borderRadius:
                                                          BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            20.0),
                                                      ),
                                                    ),
                                                    context: context,
                                                    builder: ((context) {
                                                      return StatefulBuilder(
                                                          builder: (BuildContext
                                                                  context,
                                                              StateSetter
                                                                  setState) {
                                                        return Stack(
                                                          clipBehavior:
                                                              Clip.none,
                                                          children: [
                                                            Padding(
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        16.0),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      SizedBox(
                                                                        height: height *
                                                                            0.04,
                                                                      ),
                                                                      Container(
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                Color(0xffe2e2e2),
                                                                            borderRadius: BorderRadius.circular(5)),
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            ListTile(
                                                                              minVerticalPadding: 10,
                                                                              horizontalTitleGap: 0.0,
                                                                              visualDensity: const VisualDensity(vertical: -3),
                                                                              dense: true,
                                                                              leading: CircleAvatar(
                                                                                radius: 20,
                                                                                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlNVVvK5ZVf-mcb5NoM_Koh1f3Nfh8H2qGOA&usqp=CAU'),
                                                                              ),
                                                                              title: Text(
                                                                                'Rajan Mistry-1 ',
                                                                                style: ProfileSelf().buildtextstyle(),
                                                                              ),
                                                                              subtitle: Text(
                                                                                '@m.rajan02',
                                                                                style: ProfileSelf().buildtextstyle(),
                                                                              ),
                                                                            ),
                                                                            /*    SizedBox(
                                                                  height: height * 0.01,
                                                                ), */
                                                                            Divider(),
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsets.only(left: 25.0),
                                                                                  child: Text(
                                                                                    'are you sure remove this profile ? ',
                                                                                    style: TextStyle(fontSize: 8, fontFamily: 'Poppins', color: customTextColor),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            /*    SizedBox(
                                                                  height: height * 0.01,
                                                                ), */
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Padding(
                                                                                    padding: const EdgeInsets.only(left: 16.0),
                                                                                    child: TextButton(
                                                                                        style: TextButton.styleFrom(
                                                                                          padding: EdgeInsets.zero,
                                                                                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                        ),
                                                                                        onPressed: () {},
                                                                                        child: Text('Cancel', style: TextStyle(color: customTextColor, fontSize: 12)))),
                                                                                TextButton(
                                                                                    style: TextButton.styleFrom(
                                                                                      padding: EdgeInsets.zero,
                                                                                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                    ),
                                                                                    onPressed: () {},
                                                                                    child: Row(
                                                                                      children: [
                                                                                        Icon(
                                                                                          Icons.delete,
                                                                                          color: Color(0xffED1B24),
                                                                                          size: 10,
                                                                                        ),
                                                                                        Text('Remove', style: TextStyle(color: Color(0xffED1B24), fontSize: 12)),
                                                                                      ],
                                                                                    ))
                                                                              ],
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height: height *
                                                                            0.05,
                                                                      ),
                                                                    ])),
                                                            Positioned.fill(
                                                                top: -36,
                                                                child: Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  child:
                                                                      InkWell(
                                                                    onTap: () {
                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      /*   width: 45,
                                  height: 45, */
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        border: Border.all(
                                                                            color:
                                                                                Colors.white,
                                                                            width: 2),
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(4.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .close,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ))
                                                          ],
                                                        );
                                                      });
                                                    }));
                                              },
                                              child: Text('Remove',
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 12)))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffe2e2e2),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Column(
                                    children: [
                                      ListTile(
                                        minVerticalPadding: 10,
                                        horizontalTitleGap: 0.0,
                                        visualDensity:
                                            const VisualDensity(vertical: -3),
                                        dense: true,
                                        leading: CircleAvatar(
                                          radius: 20,
                                          backgroundImage: NetworkImage(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlNVVvK5ZVf-mcb5NoM_Koh1f3Nfh8H2qGOA&usqp=CAU'),
                                        ),
                                        title: Text(
                                          'Rajan Mistry-1 ',
                                          style: ProfileSelf().buildtextstyle(),
                                        ),
                                        subtitle: Text(
                                          '@m.rajan02',
                                          style: ProfileSelf().buildtextstyle(),
                                        ),
                                      ),
                                      /*    SizedBox(
                                                                  height: height * 0.01,
                                                                ), */
                                      Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 25.0),
                                            child: Text(
                                              'this profile, post, video & reply message #Content',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xffF44336)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      /*    SizedBox(
                                                                  height: height * 0.01,
                                                                ), */
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 16.0),
                                            child: Text(
                                              'Manager',
                                              style: TextStyle(
                                                  color: primaryColorOfApp,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          TextButton(
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              onPressed: () {},
                                              child: Text('Remove',
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 12)))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: height * 0.01,
                              ),
                              SizedBox(
                                height: 35,
                                child: TextField(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    showModalBottomSheet(
                                        /*  isScrollControlled: true, */
                                        shape: const RoundedRectangleBorder(
                                          // <-- SEE HERE
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(20.0),
                                          ),
                                        ),
                                        context: context,
                                        builder: (BuildContext context) {
                                          return StatefulBuilder(builder:
                                              (BuildContext context,
                                                  StateSetter setState) {
                                            return Stack(
                                              clipBehavior: Clip.none,
                                              children: [
                                                Column(children: [
                                                  SizedBox(
                                                    height: height * 0.01,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 18.0),
                                                    child: Row(
                                                      children: [
                                                        IconButton(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            constraints:
                                                                BoxConstraints(),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            icon: Icon(
                                                              Icons.arrow_back,
                                                              color:
                                                                  primaryColorOfApp,
                                                            )),
                                                        SizedBox(
                                                          width: width * 0.01,
                                                        ),
                                                        SizedBox(
                                                          width: 250,
                                                          child: TextFormField(
                                                              decoration:
                                                                  InputDecoration(
                                                            isDense:
                                                                true, // Added this
                                                            contentPadding:
                                                                EdgeInsets.all(
                                                                    8),
                                                            labelText:
                                                                'Profile Name.. e.g.  ajay singh',
                                                            labelStyle:
                                                                const TextStyle(
                                                                    color: Color(
                                                                        0xffc4c4c4),
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        10),
                                                            enabledBorder: OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                                borderSide:
                                                                    const BorderSide(
                                                                        color: Color(
                                                                            0xff737373),
                                                                        width:
                                                                            0.5)),
                                                            focusedBorder: OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                                borderSide:
                                                                    const BorderSide(
                                                                        color: Color(
                                                                            0xff737373),
                                                                        width:
                                                                            0.5)),
                                                            /*    prefixIcon: Icon(Icons.search), */
                                                          )),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  ListTile(
                                                    minVerticalPadding: 10,
                                                    horizontalTitleGap: 0.0,
                                                    visualDensity:
                                                        const VisualDensity(
                                                            vertical: -3),
                                                    dense: true,
                                                    leading: CircleAvatar(
                                                      radius: 20,
                                                      backgroundImage: NetworkImage(
                                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlNVVvK5ZVf-mcb5NoM_Koh1f3Nfh8H2qGOA&usqp=CAU'),
                                                    ),
                                                    title: Text(
                                                      'Rajan Mistry-1 ',
                                                      style: ProfileSelf()
                                                          .buildtextstyle(),
                                                    ),
                                                    subtitle: Text(
                                                      '@m.rajan02',
                                                      style: ProfileSelf()
                                                          .buildtextstyle(),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: double.infinity,
                                                    // height: 50,
                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                        showModalBottomSheet(
                                                            /* isScrollControlled: true, */
                                                            shape:
                                                                const RoundedRectangleBorder(
                                                              // <-- SEE HERE
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .vertical(
                                                                top: Radius
                                                                    .circular(
                                                                        20.0),
                                                              ),
                                                            ),
                                                            context: context,
                                                            builder:
                                                                (BuildContext
                                                                    context) {
                                                              return StatefulBuilder(builder:
                                                                  (BuildContext
                                                                          context,
                                                                      StateSetter
                                                                          setState) {
                                                                return Stack(
                                                                  clipBehavior:
                                                                      Clip.none,
                                                                  children: [
                                                                    Padding(
                                                                        padding: const EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                16.0),
                                                                        child: Column(
                                                                            /* mainAxisSize: MainAxisSize.min, */ children: [
                                                                              SizedBox(
                                                                                height: height * 0.01,
                                                                              ),
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Row(
                                                                                    children: [
                                                                                      CircleAvatar(
                                                                                        radius: 20,
                                                                                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                                                                      ),
                                                                                      SizedBox(
                                                                                        width: width * 0.01,
                                                                                      ),
                                                                                      Column(
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            '@Profile.Username007',
                                                                                            style: TextStyle(color: primaryColorOfApp, fontFamily: 'Poppins', fontSize: 10),
                                                                                          ),
                                                                                          Text(
                                                                                            'Ajay Singh-B',
                                                                                            style: ProfileSelf().buildtextstyle(),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsets.only(right: 8.0),
                                                                                    child: OutlinedButton(
                                                                                        style: OutlinedButton.styleFrom(
                                                                                            elevation: 0,
                                                                                            minimumSize: const Size(60, 30),
                                                                                            // padding: EdgeInsets.symmetric(
                                                                                            //     horizontal: 40.0, vertical: 20.0),
                                                                                            backgroundColor: const Color(0xffFFFFFF),
                                                                                            side: BorderSide(color: customTextColor),
                                                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                                        onPressed: () {},
                                                                                        child: Text(
                                                                                          'Accepted',
                                                                                          style: TextStyle(fontFamily: 'Poppins', color: customTextColor, fontSize: 10),
                                                                                        )),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: height * 0.01,
                                                                              ),
                                                                              Row(
                                                                                children: [
                                                                                  Text('@Profile.Username007 accepted your request',
                                                                                      style: TextStyle(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: customTextColor,
                                                                                        fontSize: 10,
                                                                                      )),
                                                                                ],
                                                                              ),
                                                                              Divider(),
                                                                              Row(
                                                                                children: [
                                                                                  Text('you can permission to ',
                                                                                      style: TextStyle(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: customTextColor,
                                                                                        fontSize: 10,
                                                                                      )),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: height * 0.01,
                                                                              ),
                                                                              Row(
                                                                                children: [
                                                                                  Text('Select One Option ',
                                                                                      style: TextStyle(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: customTextColor,
                                                                                        fontSize: 10,
                                                                                      )),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: height * 0.01,
                                                                              ),
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Column(
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Admin',
                                                                                            style: TextStyle(color: customTextColor, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            'access all: Post, share, like, comments, repost & live',
                                                                                            style: TextStyle(fontFamily: 'Poppins', fontSize: 8),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Radio(
                                                                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                      groupValue: groupemail,
                                                                                      value: emailid,
                                                                                      onChanged: (val) {
                                                                                        setState(() {
                                                                                          groupemail = emailid;
                                                                                        });
                                                                                      })
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: height * 0.03,
                                                                              ),
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Column(
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Manager ',
                                                                                            style: TextStyle(color: customTextColor, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            'Post Photo & Videos',
                                                                                            style: ProfileSelf().buildtextstyle(),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Radio(
                                                                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                      groupValue: groupemail,
                                                                                      value: emailid,
                                                                                      onChanged: (val) {
                                                                                        setState(() {
                                                                                          groupemail = emailid;
                                                                                        });
                                                                                      })
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text(
                                                                                    'You can set limitation',
                                                                                    style: TextStyle(color: customTextColor, fontFamily: 'Poppins', fontSize: 10),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsets.only(right: 8.0),
                                                                                    child: TextButton(
                                                                                        style: TextButton.styleFrom(
                                                                                          padding: EdgeInsets.zero,
                                                                                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                        ),
                                                                                        onPressed: () {
                                                                                          WidgetProfilePage().buildgotoset(context);
                                                                                        },
                                                                                        child: Row(
                                                                                          children: [
                                                                                            Text('GO TO SET', style: TextStyle(color: primaryColorOfApp, fontSize: 10)),
                                                                                            Iconify(
                                                                                              Eva.arrow_right_fill,
                                                                                              size: 15,
                                                                                            )
                                                                                          ],
                                                                                        )),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: height * 0.04,
                                                                              ),
                                                                              SizedBox(
                                                                                  width: double.infinity,
                                                                                  child: ElevatedButton(
                                                                                      style: ElevatedButton.styleFrom(
                                                                                          elevation: 0,
                                                                                          /*     minimumSize: const Size(0.0, 40), */
                                                                                          // padding: EdgeInsets.symmetric(
                                                                                          //     horizontal: 40.0, vertical: 20.0),
                                                                                          backgroundColor: const Color(0xff0087FF),
                                                                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                                      onPressed: () {},
                                                                                      child: Text('Confirm', style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'Poppins'))))
                                                                            ])),
                                                                    Positioned.fill(
                                                                        top: -36,
                                                                        child: Align(
                                                                          alignment:
                                                                              Alignment.topCenter,
                                                                          child:
                                                                              InkWell(
                                                                            onTap:
                                                                                () {
                                                                              Navigator.pop(context);
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              /*   width: 45,
                                  height: 45, */
                                                                              decoration: BoxDecoration(
                                                                                border: Border.all(color: Colors.white, width: 2),
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(4.0),
                                                                                child: Icon(
                                                                                  Icons.close,
                                                                                  color: Colors.white,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ))
                                                                  ],
                                                                );
                                                              });
                                                            });
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              elevation: 0,
                                                              /*     minimumSize: const Size(0.0, 40), */
                                                              // padding: EdgeInsets.symmetric(
                                                              //     horizontal: 40.0, vertical: 20.0),
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xff0087FF),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0))),
                                                      child: const Text(
                                                        "Send Request",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Poppins'),
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                                Positioned.fill(
                                                    top: -36,
                                                    child: Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: InkWell(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Container(
                                                          /*   width: 45,
                                  height: 45, */
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                                color: Colors
                                                                    .white,
                                                                width: 2),
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(4.0),
                                                            child: Icon(
                                                              Icons.close,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ))
                                              ],
                                            );
                                          });
                                        });
                                  },
                                  decoration: InputDecoration(
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Iconify(
                                        Ri.search_line,
                                        size: 15,
                                        color: Color(0xffDADADA),
                                      ),
                                    ),
                                    prefixIconConstraints: BoxConstraints(),
                                    isDense: true,
                                    labelText: 'Search Profile Name',
                                    labelStyle: TextStyle(
                                        color: Color(0xffc4c4c4),
                                        fontFamily: 'Poppins',
                                        fontSize: 12),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff737373)),
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                      )
                    ])),
                Positioned.fill(
                    top: -36,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          /*   width: 45,
                                  height: 45, */
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ))
              ],
            );
          }),
        );
      });
}
