// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/colors.dart';
import 'package:flutter_application_1/homepage/profile_self.dart';
import 'package:flutter_application_1/homepage/widget_notification.dart';
import 'package:flutter_application_1/homepage/widget_profile_page.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/eva.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:sizer/sizer.dart';

permissionmethod(context) {
  bool emailid = false;
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
                Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Row(
                      children: [
                        IconButton(
                            padding: const EdgeInsets.all(0),
                            constraints: const BoxConstraints(),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Iconify(
                              Mdi.arrow_back,
                              color: primaryColorOfApp,
                            )),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          'Permission set',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 13.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    height: 6.h,
                    color: const Color(0xffe2e2e2),
                    child: TabBar(
                      indicatorWeight: 1,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorPadding: EdgeInsets.zero,
                      labelColor: primaryColorOfApp,
                      unselectedLabelColor: customTextColor,
                      indicatorColor: Colors.transparent,
                      tabs: [
                        Tab(
                          child: Text(
                            'Actived',
                            style: TextStyle(
                                fontFamily: 'Poppins', fontSize: 12.sp),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'New Add',
                            style: TextStyle(
                                fontFamily: 'Poppins', fontSize: 12.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: SizedBox(
                      height: 300,
                      child: TabBarView(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xffe2e2e2),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Column(
                                  children: [
                                    ListTile(
                                      minVerticalPadding: 10,
                                      horizontalTitleGap: 0.0,
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      leading: const CircleAvatar(
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
                                    const Divider(),
                                    const Text(
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
                                        const Padding(
                                          padding: EdgeInsets.only(left: 16.0),
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
                                                      top:
                                                          Radius.circular(20.0),
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
                                                        clipBehavior: Clip.none,
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
                                                                      height:
                                                                          height *
                                                                              0.04,
                                                                    ),
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                          color: const Color(
                                                                              0xffe2e2e2),
                                                                          borderRadius:
                                                                              BorderRadius.circular(5)),
                                                                      child:
                                                                          Column(
                                                                        children: [
                                                                          ListTile(
                                                                            minVerticalPadding:
                                                                                10,
                                                                            horizontalTitleGap:
                                                                                0.0,
                                                                            visualDensity:
                                                                                const VisualDensity(vertical: -3),
                                                                            dense:
                                                                                true,
                                                                            leading:
                                                                                const CircleAvatar(
                                                                              radius: 20,
                                                                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlNVVvK5ZVf-mcb5NoM_Koh1f3Nfh8H2qGOA&usqp=CAU'),
                                                                            ),
                                                                            title:
                                                                                Text(
                                                                              'Rajan Mistry-1 ',
                                                                              style: ProfileSelf().buildtextstyle(),
                                                                            ),
                                                                            subtitle:
                                                                                Text(
                                                                              '@m.rajan02',
                                                                              style: ProfileSelf().buildtextstyle(),
                                                                            ),
                                                                          ),
                                                                          /*    SizedBox(
                                                                height: height * 0.01,
                                                              ), */
                                                                          const Divider(),
                                                                          Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: const [
                                                                              Padding(
                                                                                padding: EdgeInsets.only(left: 25.0),
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
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Padding(
                                                                                  padding: const EdgeInsets.only(left: 16.0),
                                                                                  child: TextButton(
                                                                                      style: TextButton.styleFrom(
                                                                                        padding: EdgeInsets.zero,
                                                                                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                      ),
                                                                                      onPressed: () {},
                                                                                      child: const Text('Cancel', style: TextStyle(color: customTextColor, fontSize: 12)))),
                                                                              TextButton(
                                                                                  style: TextButton.styleFrom(
                                                                                    padding: EdgeInsets.zero,
                                                                                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                  ),
                                                                                  onPressed: () {},
                                                                                  child: Row(
                                                                                    children: const [
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
                                                                      height:
                                                                          height *
                                                                              0.05,
                                                                    ),
                                                                  ])),
                                                          positionCross(context)
                                                        ],
                                                      );
                                                    });
                                                  }));
                                            },
                                            child: const Text('Remove',
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 12)))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xffe2e2e2),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Column(
                                  children: [
                                    ListTile(
                                      minVerticalPadding: 10,
                                      horizontalTitleGap: 0.0,
                                      visualDensity:
                                          const VisualDensity(vertical: -3),
                                      dense: true,
                                      leading: const CircleAvatar(
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
                                    const Divider(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(left: 25.0),
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
                                        const Padding(
                                          padding: EdgeInsets.only(left: 16.0),
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
                                            child: const Text('Remove',
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 12)))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 6.h,
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
                                                  height: 3.h,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    children: [
                                                      IconButton(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          constraints:
                                                              const BoxConstraints(),
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          icon: const Iconify(
                                                            Mdi.arrow_back,
                                                            color:
                                                                primaryColorOfApp,
                                                          )),
                                                      SizedBox(
                                                        width: 2.w,
                                                      ),
                                                      Expanded(
                                                        child: TextFormField(
                                                            cursorColor:
                                                                primaryColorOfApp,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense:
                                                                  true, // Added this
                                                              contentPadding:
                                                                  const EdgeInsets
                                                                      .all(8),
                                                              labelText:
                                                                  'Profile Name.. e.g.  ajay singh',
                                                              labelStyle: const TextStyle(
                                                                  color: Color(
                                                                      0xffc4c4c4),
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 10),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5),
                                                                  borderSide: const BorderSide(
                                                                      color: Color(
                                                                          0xff737373),
                                                                      width:
                                                                          0.5)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5),
                                                                  borderSide: const BorderSide(
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
                                                  leading: const CircleAvatar(
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
                                                  height: 6.h,
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
                                                          builder: (BuildContext
                                                              context) {
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
                                                                          /* mainAxisSize: MainAxisSize.min, */ children: [
                                                                            SizedBox(
                                                                              height: height * 0.01,
                                                                            ),
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Row(
                                                                                  children: [
                                                                                    const CircleAvatar(
                                                                                      radius: 20,
                                                                                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      width: width * 0.01,
                                                                                    ),
                                                                                    Column(
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        const Text(
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
                                                                                          side: const BorderSide(color: customTextColor),
                                                                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                                      onPressed: () {},
                                                                                      child: const Text(
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
                                                                              children: const [
                                                                                Text('@Profile.Username007 accepted your request',
                                                                                    style: TextStyle(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: customTextColor,
                                                                                      fontSize: 10,
                                                                                    )),
                                                                              ],
                                                                            ),
                                                                            const Divider(),
                                                                            Row(
                                                                              children: const [
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
                                                                              children: const [
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
                                                                                      children: const [
                                                                                        Text(
                                                                                          'Admin',
                                                                                          style: TextStyle(color: customTextColor, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      children: const [
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
                                                                                      children: const [
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
                                                                                const Text(
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
                                                                                        children: const [
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
                                                                                height: 6.h,
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
                                                                                    child: const Text('Confirm', style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'Poppins'))))
                                                                          ])),
                                                                  positionCross(
                                                                      context)
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
                                              positionCross(context)
                                            ],
                                          );
                                        });
                                      });
                                },
                                decoration: InputDecoration(
                                  prefixIcon: const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Iconify(
                                      Ri.search_line,
                                      size: 15,
                                      color: Color(0xffDADADA),
                                    ),
                                  ),
                                  prefixIconConstraints: const BoxConstraints(),
                                  isDense: true,
                                  labelText: 'Search Profile Name',
                                  labelStyle: const TextStyle(
                                      color: Color(0xffc4c4c4),
                                      fontFamily: 'Poppins',
                                      fontSize: 12),
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xff737373)),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  )
                ]),
                positionCross(context)
              ],
            );
          }),
        );
      });
}
