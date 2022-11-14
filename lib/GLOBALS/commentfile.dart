/* IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        onPressed: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
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
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 168, 161, 161),
                                                border: Border.all(
                                                    width: 0.5,
                                                    color: Color.fromARGB(
                                                        255, 168, 161, 161)),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            height: 5,
                                            width: 100,
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 18.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '@Nanncyjain23',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xff0087FF)),
                                                ),
                                                Iconify(
                                                  Bi.patch_check,
                                                  size: 15,
                                                  color: primaryColorOfApp,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(),
                                          ListTile(
                                            minLeadingWidth: 10,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            onTap: () {
                                              showModalBottomSheet(
                                                  backgroundColor: Colors.white,
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
                                                  builder:
                                                      (BuildContext context) {
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
                                                                      15.0),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    SizedBox(
                                                                      height:
                                                                          height *
                                                                              0.01,
                                                                    ),
                                                                    ListTile(
                                                                      minVerticalPadding:
                                                                          10,
                                                                      horizontalTitleGap:
                                                                          4,
                                                                      visualDensity:
                                                                          const VisualDensity(
                                                                              vertical: -3),
                                                                      dense:
                                                                          true,
                                                                      leading:
                                                                          CircleAvatar(
                                                                        radius:
                                                                            20,
                                                                        backgroundImage:
                                                                            NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                                                      ),
                                                                      title:
                                                                          Row(
                                                                        children: [
                                                                          Text(
                                                                            '@Nanncyjain23 ',
                                                                            style:
                                                                                TextStyle(color: primaryColorOfApp, fontFamily: 'Poppins'),
                                                                          ),
                                                                          Iconify(
                                                                            Bi.patch_check,
                                                                            size:
                                                                                15,
                                                                            color:
                                                                                primaryColorOfApp,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      subtitle:
                                                                          Text(
                                                                        '@m.rajan02',
                                                                        style: ProfileSelf()
                                                                            .buildtextstyle(),
                                                                      ),
                                                                    ),
                                                                    Divider(),
                                                                    SizedBox(
                                                                      height:
                                                                          height *
                                                                              0.01,
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                              .symmetric(
                                                                          horizontal:
                                                                              18.0),
                                                                      child:
                                                                          Column(
                                                                        children: [
                                                                          Row(
                                                                            children: [
                                                                              Text(
                                                                                'Information about this profile',
                                                                                style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 14),
                                                                              )
                                                                            ],
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                height * 0.04,
                                                                          ),
                                                                          Row(
                                                                            children: [
                                                                              Text(
                                                                                'this is viewer’s private profile ',
                                                                                style: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                                                                              )
                                                                            ],
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                height * 0.01,
                                                                          ),
                                                                          Row(
                                                                            children: [
                                                                              Text(
                                                                                'this profile created in 24-july-2018 ',
                                                                                style: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                                                                              )
                                                                            ],
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                height * 0.01,
                                                                          ),
                                                                          Row(
                                                                            children: [
                                                                              Text(
                                                                                'this profile created in india ',
                                                                                style: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                                                                              )
                                                                            ],
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                height * 0.01,
                                                                          ),
                                                                          Row(
                                                                            children: [
                                                                              Text(
                                                                                'this profile is verified  ',
                                                                                style: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                                                                              ),
                                                                              Iconify(
                                                                                Bi.patch_check,
                                                                                size: 15,
                                                                                color: primaryColorOfApp,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                height * 0.01,
                                                                          ),
                                                                          Row(
                                                                            children: [
                                                                              Text(
                                                                                'this profile current rating is',
                                                                                style: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                                                                              ),
                                                                              Icon(
                                                                                Icons.star,
                                                                                color: Colors.green,
                                                                                size: 17,
                                                                              ),
                                                                              Text(
                                                                                '4.8',
                                                                                style: TextStyle(fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.bold),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                height * 0.04,
                                                                          ),
                                                                          Row(
                                                                            children: [
                                                                              Text(
                                                                                'how much would you like to ratings this profile?',
                                                                                style: TextStyle(fontFamily: 'Poppins', fontSize: 11, fontWeight: FontWeight.bold),
                                                                              )
                                                                            ],
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                height * 0.01,
                                                                          ),
                                                                          Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              RatingBar.builder(
                                                                                itemSize: 20,
                                                                                initialRating: 3,
                                                                                minRating: 1,
                                                                                direction: Axis.horizontal,
                                                                                allowHalfRating: false,
                                                                                itemCount: 5,
                                                                                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                                                                itemBuilder: (context, _) => Icon(
                                                                                  Icons.star,
                                                                                  color: Colors.green,
                                                                                ),
                                                                                onRatingUpdate: (rating) {
                                                                                  print(rating);
                                                                                },
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              ElevatedButton(
                                                                                onPressed: () {},
                                                                                style: ElevatedButton.styleFrom(
                                                                                    elevation: 0,
                                                                                    minimumSize: const Size(120, 35),
                                                                                    // padding: EdgeInsets.symmetric(
                                                                                    //     horizontal: 40.0, vertical: 20.0),
                                                                                    backgroundColor: const Color(0xff0087FF),
                                                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                                child: Text(
                                                                                  "Submit",
                                                                                  style: TextStyle(color: Colors.white, fontSize: width * 0.045, fontFamily: 'Poppins', fontWeight: FontWeight.w600),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                height * 0.2,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ])),
                                                          Positioned.fill(
                                                              top: -36,
                                                              child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: InkWell(
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
                                                                          color: Colors
                                                                              .white,
                                                                          width:
                                                                              2),
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .close,
                                                                        color: Colors
                                                                            .white,
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
                                            title: Text(
                                              'About profile',
                                              style: ProfileSelf()
                                                  .buildtextstyle(),
                                            ),
                                            leading: SvgPicture.asset(
                                              'assets/setabout.svg',
                                              height: 18,
                                              width: 18,
                                            ),
                                            trailing: Iconify(
                                              Eva.arrow_right_fill,
                                              size: 15,
                                              color: Color(0xff333333),
                                            ),
                                          ),
                                          ListTile(
                                            minLeadingWidth: 10,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            onTap: () {},
                                            title: Text('my favourties profile',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10,
                                                    color: value1
                                                        ? Color(0xff0087FF)
                                                        : Colors.black)),
                                            leading: SvgPicture.asset(
                                                'assets/hearticon.svg',
                                                height: 18,
                                                width: 18,
                                                color: value1
                                                    ? Colors.red
                                                    : Colors.black),
                                            trailing: Checkbox(
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                shape: const CircleBorder(),
                                                value: value1,
                                                onChanged: (value1) {
                                                  setState(() {
                                                    this.value1 = value1!;
                                                  });
                                                }),
                                          ),
                                          ListTile(
                                            minLeadingWidth: 10,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            onTap: () {},
                                            title: Text('my close friends',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10,
                                                    color: value2
                                                        ? Color(0xff0087FF)
                                                        : Colors.black)),
                                            leading: SvgPicture.asset(
                                              'assets/friendicon.svg',
                                              height: 18,
                                              width: 18,
                                            ),
                                            trailing: Checkbox(
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                shape: const CircleBorder(),
                                                value: value2,
                                                onChanged: (value2) {
                                                  setState(() {
                                                    this.value2 = value2!;
                                                  });
                                                }),
                                          ),
                                          ListTile(
                                            minLeadingWidth: 10,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            onTap: () {
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
                                                  builder:
                                                      (BuildContext context) {
                                                    return StatefulBuilder(
                                                        builder: (BuildContext
                                                                context,
                                                            StateSetter
                                                                setState) {
                                                      return Stack(
                                                        clipBehavior: Clip.none,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
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
                                                                            0.01,
                                                                  ),
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                        color: Color(0xffE2E2E2),
                                                                        border: Border.all(
                                                                          width:
                                                                              0.5,
                                                                          color:
                                                                              Color(0xffE2E2E2),
                                                                        ),
                                                                        borderRadius: BorderRadius.circular(10)),
                                                                    height: 5,
                                                                    width: 100,
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        height *
                                                                            0.01,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            18.0),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'share to ',
                                                                          style: TextStyle(
                                                                              fontSize: 12,
                                                                              fontFamily: 'Poppins',
                                                                              color: Color(0xff0087FF)),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Divider(),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Column(
                                                                        children: [
                                                                          Text(
                                                                            'send to chat-box ',
                                                                            style:
                                                                                TextStyle(fontFamily: 'Poppins', fontSize: 8),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                5,
                                                                          ),
                                                                          Image
                                                                              .asset(
                                                                            'assets/logo.png',
                                                                            height:
                                                                                22,
                                                                            width:
                                                                                22,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Column(
                                                                        children: [
                                                                          Text(
                                                                            'send to group ',
                                                                            style:
                                                                                TextStyle(fontFamily: 'Poppins', fontSize: 8),
                                                                          ),
                                                                          SizedBox(
                                                                            height:
                                                                                5,
                                                                          ),
                                                                          SvgPicture
                                                                              .asset(
                                                                            'assets/privacygroup.svg',
                                                                            height:
                                                                                22,
                                                                            width:
                                                                                22,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      InkWell(
                                                                        onTap:
                                                                            () {
                                                                          final box =
                                                                              context.findRenderObject() as RenderBox?;
                                                                          Share.share(
                                                                              'aasd',
                                                                              subject: 'axaa',
                                                                              sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
                                                                        },
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Text(
                                                                              'share to',
                                                                              style: TextStyle(fontFamily: 'Poppins', fontSize: 8),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 5,
                                                                            ),
                                                                            SvgPicture.asset(
                                                                              'assets/settingshare.svg',
                                                                              height: 20,
                                                                              width: 20,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        height *
                                                                            0.01,
                                                                  ),
                                                                  SizedBox(
                                                                      height:
                                                                          40,
                                                                      child: TextFormField(
                                                                          decoration: InputDecoration(
                                                                        enabledBorder: OutlineInputBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5),
                                                                            borderSide: const BorderSide(color: Color(0xff333333), width: 0.5)),
                                                                        focusedBorder: OutlineInputBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5),
                                                                            borderSide: const BorderSide(color: Color(0xff0087FF), width: 0.5)),
                                                                        labelText:
                                                                            'Search',
                                                                      ))),
                                                                  ListView
                                                                      .builder(
                                                                          shrinkWrap:
                                                                              true,
                                                                          itemCount:
                                                                              3,
                                                                          itemBuilder:
                                                                              ((context, index) {
                                                                            return ListTile(
                                                                              minVerticalPadding: 10,
                                                                              horizontalTitleGap: 4,
                                                                              visualDensity: const VisualDensity(vertical: -3),
                                                                              dense: true,
                                                                              leading: CircleAvatar(
                                                                                radius: 20,
                                                                                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                                                              ),
                                                                              title: Text(
                                                                                'Rajan Mistry-1 ',
                                                                                style: ProfileSelf().buildtextstyle(),
                                                                              ),
                                                                              subtitle: Text(
                                                                                '@m.rajan02',
                                                                                style: ProfileSelf().buildtextstyle(),
                                                                              ),
                                                                              trailing: OutlinedButton(
                                                                                  style: OutlinedButton.styleFrom(
                                                                                      elevation: 0,
                                                                                      minimumSize: Size(80, 30),
                                                                                      // padding: EdgeInsets.symmetric(
                                                                                      //     horizontal: 40.0, vertical: 20.0),
                                                                                      side: const BorderSide(
                                                                                        color: Color(0xff0087FF),
                                                                                      ),
                                                                                      backgroundColor: Colors.white,
                                                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                                  onPressed: () {},
                                                                                  child: Text(
                                                                                    'Send',
                                                                                    style: TextStyle(fontFamily: 'Poppins', color: primaryColorOfApp, fontSize: 10),
                                                                                  )),
                                                                            );
                                                                          })),
                                                                  SizedBox(
                                                                    height:
                                                                        height *
                                                                            0.2,
                                                                  )
                                                                ]),
                                                          ),
                                                          Positioned.fill(
                                                              top: -36,
                                                              child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: InkWell(
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
                                                                          color: Colors
                                                                              .white,
                                                                          width:
                                                                              2),
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .close,
                                                                        color: Colors
                                                                            .white,
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
                                            title: Text(
                                              'share this profile',
                                              style: ProfileSelf()
                                                  .buildtextstyle(),
                                            ),
                                            leading: SvgPicture.asset(
                                              'assets/shareicon.svg',
                                              height: 18,
                                              width: 18,
                                            ),
                                            trailing: Iconify(
                                              Eva.arrow_right_fill,
                                              size: 15,
                                              color: Color(0xff333333),
                                            ),
                                          ),
                                          ListTile(
                                            minLeadingWidth: 10,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            onTap: () {
                                              showModalBottomSheet(
                                                  backgroundColor: Colors.white,
                                                  /*  isScrollControlled: true, */
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
                                                  builder:
                                                      (BuildContext context) {
                                                    return StatefulBuilder(
                                                        builder: (BuildContext
                                                                context,
                                                            StateSetter
                                                                setState) {
                                                      return Stack(
                                                        clipBehavior: Clip.none,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        18.0),
                                                            child: Column(
                                                                /*    mainAxisSize:
                                                                    MainAxisSize.min, */
                                                                children: [
                                                                  SizedBox(
                                                                    height:
                                                                        height *
                                                                            0.01,
                                                                  ),
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                        color: Color(
                                                                            0xffE2E2E2),
                                                                        border: Border.all(
                                                                            width:
                                                                                0.5,
                                                                            color: Color(
                                                                                0xffE2E2E2)),
                                                                        borderRadius:
                                                                            BorderRadius.circular(10)),
                                                                    height: 5,
                                                                    width: 100,
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        height *
                                                                            0.01,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'Notifications',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                15,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                Color(0xff0087FF)),
                                                                      ),
                                                                      Iconify(
                                                                        Bi.patch_check,
                                                                        size:
                                                                            15,
                                                                        color:
                                                                            primaryColorOfApp,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Container(
                                                                    /* color: Colors.red, */
                                                                    height: 48,
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Positioned(
                                                                          top:
                                                                              7,
                                                                          left:
                                                                              0,
                                                                          height:
                                                                              40,
                                                                          width:
                                                                              280,
                                                                          child:
                                                                              Container(
                                                                            decoration: BoxDecoration(
                                                                                color: Colors.white,
                                                                                border: Border.all(width: 0.5, color: const Color(0xff515253)),
                                                                                borderRadius: BorderRadius.circular(10)),
                                                                            /*  width: 150,
                height: 150, */
                                                                            /*  color: Colors.green[300], */
                                                                            child:
                                                                                Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsets.only(left: 8.0),
                                                                                  child: Row(
                                                                                    children: [
                                                                                      Text(
                                                                                        '26548 rank ',
                                                                                        style: TextStyle(color: primaryColorOfApp, fontFamily: 'Poppins'),
                                                                                      ),
                                                                                      Text(
                                                                                        '489659984 ',
                                                                                        style: TextStyle(fontFamily: 'Poppins'),
                                                                                      ),
                                                                                      Text(
                                                                                        'Points',
                                                                                        style: TextStyle(fontFamily: 'Poppins'),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsets.only(right: 8.0),
                                                                                  child: Image.asset('assets/earnpoints.png'),
                                                                                )
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          top:
                                                                              0,
                                                                          left:
                                                                              30,
                                                                          width:
                                                                              70,
                                                                          height:
                                                                              10,
                                                                          child:
                                                                              Container(
                                                                            /*   width: 200,
                height: 150, */
                                                                            color:
                                                                                Colors.white,
                                                                            child:
                                                                                const Text(
                                                                              'Earn Points This Profile ',
                                                                              style: TextStyle(color: Color(0xff515253), fontSize: 10, fontFamily: 'Poppins'),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Text(
                                                                        'Today',
                                                                        style: TextStyle(
                                                                            color:
                                                                                primaryColorOfApp,
                                                                            fontFamily:
                                                                                'Poppins'),
                                                                      ),
                                                                      SizedBox(
                                                                        width: width *
                                                                            0.03,
                                                                      ),
                                                                      Text(
                                                                        '13 Dec 2020',
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontSize:
                                                                                8),
                                                                      )
                                                                    ],
                                                                  ),
                                                                  Divider(),
                                                                  Container(
                                                                    /* color: Colors.red, */
                                                                    height: 160,
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Positioned(
                                                                          top:
                                                                              7,
                                                                          left:
                                                                              0,
                                                                          height:
                                                                              140,
                                                                          width:
                                                                              280,
                                                                          child:
                                                                              Container(
                                                                            decoration: BoxDecoration(
                                                                                color: Colors.white,
                                                                                border: Border.all(width: 0.5, color: const Color(0xff515253)),
                                                                                borderRadius: BorderRadius.circular(10)),
                                                                            /*  width: 150,
                height: 150, */
                                                                            /*  color: Colors.green[300], */
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsets.all(8.0),
                                                                                  child: Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Text(
                                                                                        'No. 1 rank',
                                                                                        style: TextStyle(fontFamily: 'Poppins'),
                                                                                      ),
                                                                                      Text(
                                                                                        '2565489659984',
                                                                                        style: TextStyle(fontFamily: 'Poppins'),
                                                                                      ),
                                                                                      Text(
                                                                                        '@abcprofile',
                                                                                        style: TextStyle(fontFamily: 'Poppins', color: primaryColorOfApp),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Divider(),
                                                                                Padding(
                                                                                  padding: const EdgeInsets.all(8.0),
                                                                                  child: Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Text(
                                                                                        'No. 1 rank',
                                                                                        style: TextStyle(fontFamily: 'Poppins'),
                                                                                      ),
                                                                                      Text(
                                                                                        '2565489659984',
                                                                                        style: TextStyle(fontFamily: 'Poppins'),
                                                                                      ),
                                                                                      Text(
                                                                                        '@abcprofile',
                                                                                        style: TextStyle(fontFamily: 'Poppins', color: primaryColorOfApp),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Divider(),
                                                                                Padding(
                                                                                  padding: const EdgeInsets.all(8.0),
                                                                                  child: Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Text(
                                                                                        'No. 1 rank',
                                                                                        style: TextStyle(fontFamily: 'Poppins'),
                                                                                      ),
                                                                                      Text(
                                                                                        '2565489659984',
                                                                                        style: TextStyle(fontFamily: 'Poppins'),
                                                                                      ),
                                                                                      Text(
                                                                                        '@abcprofile',
                                                                                        style: TextStyle(fontFamily: 'Poppins', color: primaryColorOfApp),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          top:
                                                                              0,
                                                                          left:
                                                                              210,
                                                                          width:
                                                                              55,
                                                                          height:
                                                                              12,
                                                                          child:
                                                                              Container(
                                                                            /*   width: 200,
                height: 150, */
                                                                            color:
                                                                                Colors.white,
                                                                            child:
                                                                                const Text(
                                                                              '@profile-ID',
                                                                              style: TextStyle(color: Color(0xff515253), fontSize: 10, fontFamily: 'Poppins'),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          top:
                                                                              0,
                                                                          left:
                                                                              115,
                                                                          width:
                                                                              30,
                                                                          height:
                                                                              10,
                                                                          child:
                                                                              Container(
                                                                            /*   width: 200,
                height: 150, */
                                                                            color:
                                                                                Colors.white,
                                                                            child:
                                                                                const Text(
                                                                              'Points ',
                                                                              style: TextStyle(color: Color(0xff515253), fontSize: 10, fontFamily: 'Poppins'),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          top:
                                                                              0,
                                                                          left:
                                                                              20,
                                                                          width:
                                                                              25,
                                                                          height:
                                                                              10,
                                                                          child:
                                                                              Container(
                                                                            /*   width: 200,
                height: 150, */
                                                                            color:
                                                                                Colors.white,
                                                                            child:
                                                                                const Text(
                                                                              'Rank',
                                                                              style: TextStyle(color: Color(0xff515253), fontSize: 10, fontFamily: 'Poppins'),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ]),
                                                          ),
                                                          Positioned.fill(
                                                              top: -36,
                                                              child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: InkWell(
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
                                                                          color: Colors
                                                                              .white,
                                                                          width:
                                                                              2),
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .close,
                                                                        color: Colors
                                                                            .white,
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
                                            title: Text(
                                              'earn points this profile',
                                              style: ProfileSelf()
                                                  .buildtextstyle(),
                                            ),
                                            leading: Iconify(
                                              EmojioneMonotone.wrapped_gift,
                                              color: customTextColor,
                                              size: 18,
                                            ),
                                            trailing: Iconify(
                                              Eva.arrow_right_fill,
                                              size: 15,
                                              color: Color(0xff333333),
                                            ),
                                          ),
                                          ListTile(
                                            minLeadingWidth: 10,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            onTap: () {
                                              showModalBottomSheet(
                                                  backgroundColor: Colors.white,
                                                  /*  isScrollControlled: true, */
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
                                                  builder:
                                                      (BuildContext context) {
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
                                                                      18.0),
                                                              child: Column(
                                                                  /*    mainAxisSize:
                                                                    MainAxisSize.min, */
                                                                  children: [
                                                                    SizedBox(
                                                                      height:
                                                                          height *
                                                                              0.01,
                                                                    ),
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                          color: Color(
                                                                              0xffE2E2E2),
                                                                          border: Border.all(
                                                                              width: 0.5,
                                                                              color: Color(0xffE2E2E2)),
                                                                          borderRadius: BorderRadius.circular(10)),
                                                                      height: 5,
                                                                      width:
                                                                          100,
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          height *
                                                                              0.01,
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          '@Nanncyjain23',
                                                                          style: TextStyle(
                                                                              fontSize: 15,
                                                                              fontFamily: 'Poppins',
                                                                              color: Color(0xff0087FF)),
                                                                        ),
                                                                        Iconify(
                                                                          Bi.patch_check,
                                                                          size:
                                                                              15,
                                                                          color:
                                                                              primaryColorOfApp,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Divider(),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'this profile joined multiple group ',
                                                                          style: TextStyle(
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight.bold),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'only showing public group ',
                                                                          style:
                                                                              TextStyle(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          height *
                                                                              0.03,
                                                                    ),
                                                                    ListView.builder(
                                                                        shrinkWrap: true,
                                                                        itemCount: 3,
                                                                        itemBuilder: ((context, index) {
                                                                          return Column(
                                                                            children: [
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Column(
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        children: [
                                                                                          Text(
                                                                                            'this is public group',
                                                                                            style: ProfileSelf().buildtextstyle(),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Text('you can join this group ', style: ProfileSelf().buildtextstyle()),
                                                                                    ],
                                                                                  ),
                                                                                  Column(
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text('Shopping Center', style: ProfileSelf().buildtextstyle()),
                                                                                      Text(
                                                                                        '@see-groups',
                                                                                        style: TextStyle(color: primaryColorOfApp, fontFamily: 'Poppins'),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: height * 0.01,
                                                                              )
                                                                            ],
                                                                          );
                                                                        })),
                                                                  ])),
                                                          Positioned.fill(
                                                              top: -36,
                                                              child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: InkWell(
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
                                                                          color: Colors
                                                                              .white,
                                                                          width:
                                                                              2),
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .close,
                                                                        color: Colors
                                                                            .white,
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
                                            title: Text(
                                              'group join? this profile',
                                              style: ProfileSelf()
                                                  .buildtextstyle(),
                                            ),
                                            leading: SvgPicture.asset(
                                              'assets/privacygroup.svg',
                                              height: 18,
                                              width: 18,
                                            ),
                                            trailing: Iconify(
                                              Eva.arrow_right_fill,
                                              size: 15,
                                              color: Color(0xff333333),
                                            ),
                                          ),
                                          ListTile(
                                            minLeadingWidth: 10,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            onTap: () {
                                              setState(() {
                                                urlvariable = true;
                                              });
                                            },
                                            title: Text(
                                              'copy URL this profile',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: urlvariable
                                                      ? primaryColorOfApp
                                                      : customTextColor,
                                                  fontSize: 10),
                                            ),
                                            leading: SvgPicture.asset(
                                              'assets/urlicon.svg',
                                              color: urlvariable
                                                  ? primaryColorOfApp
                                                  : customTextColor,
                                              height: 18,
                                              width: 18,
                                            ),
                                          ),
                                          ListTile(
                                            minLeadingWidth: 10,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            onTap: () {
                                              showModalBottomSheet(
                                                  backgroundColor: Colors.white,
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
                                                  builder:
                                                      (BuildContext context) {
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
                                                                      18.0),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    SizedBox(
                                                                      height:
                                                                          height *
                                                                              0.01,
                                                                    ),
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                          color: Color(
                                                                              0xffE2E2E2),
                                                                          border: Border.all(
                                                                              width: 0.5,
                                                                              color: Color(0xffE2E2E2)),
                                                                          borderRadius: BorderRadius.circular(10)),
                                                                      height: 5,
                                                                      width:
                                                                          100,
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          height *
                                                                              0.01,
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                              .symmetric(
                                                                          horizontal:
                                                                              18.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            children: [
                                                                              Image(
                                                                                  image: const AssetImage(
                                                                                    'assets/logo.png',
                                                                                  ),
                                                                                  height: height * 0.055,
                                                                                  width: width * 0.12,
                                                                                  fit: BoxFit.fitHeight),
                                                                              Text(
                                                                                'myttube',
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(
                                                                                  color: const Color(0xff0087FF),
                                                                                  fontFamily: 'Satisfy',
                                                                                  fontSize: width * 0.08,
                                                                                  shadows: [
                                                                                    const Shadow(
                                                                                      blurRadius: 5.0,
                                                                                      color: Color(0xff000000),
                                                                                      /* offset: Offset(
                                                                                      1.0,
                                                                                      1.0), */
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          OutlinedButton(
                                                                              style: OutlinedButton.styleFrom(
                                                                                  elevation: 0,
                                                                                  side: BorderSide(width: 0.5, color: primaryColorOfApp),
                                                                                  minimumSize: const Size(80, 30),
                                                                                  // padding: EdgeInsets.symmetric(
                                                                                  //     horizontal: 40.0, vertical: 20.0),
                                                                                  backgroundColor: Colors.transparent,
                                                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                              onPressed: () {},
                                                                              child: Text(
                                                                                'follow',
                                                                                style: TextStyle(fontFamily: 'Poppins', color: primaryColorOfApp, fontSize: 10),
                                                                              )),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          250,
                                                                      decoration: BoxDecoration(
                                                                          border: Border.all(
                                                                              color:
                                                                                  primaryColorOfApp,
                                                                              width:
                                                                                  0.5),
                                                                          borderRadius: BorderRadius.circular(
                                                                              8),
                                                                          shape:
                                                                              BoxShape.rectangle),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(30.0),
                                                                        child: Container(
                                                                            decoration: BoxDecoration(border: Border.all(color: primaryColorOfApp, width: 0.5), borderRadius: BorderRadius.circular(8), shape: BoxShape.rectangle),
                                                                            child: Padding(
                                                                              padding: const EdgeInsets.all(8.0),
                                                                              child: Column(
                                                                                children: [
                                                                                  Iconify(
                                                                                    Bi.qr_code,
                                                                                    size: 140,
                                                                                  ),
                                                                                  Text(
                                                                                    '@Nanncyjain23',
                                                                                    style: TextStyle(fontFamily: 'Poppins', color: primaryColorOfApp, fontSize: 20),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                            )),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          height *
                                                                              0.01,
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          left:
                                                                              28.0),
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          Text(
                                                                            'LOGIN:',
                                                                            style:
                                                                                TextStyle(fontFamily: 'Poppins', fontSize: 15),
                                                                          ),
                                                                          Text(
                                                                            'https://myttube.com',
                                                                            style: TextStyle(
                                                                                fontFamily: 'Poppins',
                                                                                color: primaryColorOfApp,
                                                                                fontSize: 15),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          height *
                                                                              0.01,
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                              .symmetric(
                                                                          horizontal:
                                                                              28.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Column(
                                                                            children: [
                                                                              Icon(
                                                                                Icons.download,
                                                                                color: primaryColorOfApp,
                                                                              ),
                                                                              Text('download QR code')
                                                                            ],
                                                                          ),
                                                                          Column(
                                                                            children: [
                                                                              SvgPicture.asset(
                                                                                'assets/shareicon.svg',
                                                                                height: 18,
                                                                                width: 18,
                                                                                color: primaryColorOfApp,
                                                                              ),
                                                                              Text('share QR code')
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          height *
                                                                              0.2,
                                                                    )
                                                                  ])),
                                                          Positioned.fill(
                                                              top: -36,
                                                              child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: InkWell(
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
                                                                          color: Colors
                                                                              .white,
                                                                          width:
                                                                              2),
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .close,
                                                                        color: Colors
                                                                            .white,
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
                                            title: Text(
                                              'QR Code this profile',
                                              style: ProfileSelf()
                                                  .buildtextstyle(),
                                            ),
                                            leading: Iconify(
                                              Bi.qr_code_scan,
                                              size: 18,
                                            ),
                                            trailing: Iconify(
                                              Eva.arrow_right_fill,
                                              size: 15,
                                              color: Color(0xff333333),
                                            ),
                                          ),
                                          ListTile(
                                            minLeadingWidth: 10,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            onTap: () {
                                              showModalBottomSheet(
                                                  backgroundColor: Colors.white,
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
                                                  builder:
                                                      (BuildContext context) {
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
                                                                      18.0),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    SizedBox(
                                                                      height:
                                                                          height *
                                                                              0.01,
                                                                    ),
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                          color: Color(
                                                                              0xffE2E2E2),
                                                                          border: Border.all(
                                                                              width: 0.5,
                                                                              color: Color(0xffE2E2E2)),
                                                                          borderRadius: BorderRadius.circular(10)),
                                                                      height: 5,
                                                                      width:
                                                                          100,
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          height *
                                                                              0.01,
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          '@Nanncyjain23',
                                                                          style: TextStyle(
                                                                              fontSize: 15,
                                                                              fontFamily: 'Poppins',
                                                                              color: Color(0xff0087FF)),
                                                                        ),
                                                                        Iconify(
                                                                          Bi.patch_check,
                                                                          size:
                                                                              15,
                                                                          color:
                                                                              primaryColorOfApp,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Divider(),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          'report this profile ',
                                                                          style: buildTextDesign(
                                                                              null,
                                                                              null,
                                                                              FontWeight.bold),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.only(right: 11.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/blockicon.svg',
                                                                            height:
                                                                                18,
                                                                            width:
                                                                                18,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          'what do you want to do?',
                                                                          style: buildTextDesign(
                                                                              11.0,
                                                                              null,
                                                                              null),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          'harassment message',
                                                                          style: buildTextDesign(
                                                                              10.0,
                                                                              null,
                                                                              null),
                                                                        ),
                                                                        Radio(
                                                                            materialTapTargetSize: MaterialTapTargetSize
                                                                                .shrinkWrap,
                                                                            groupValue:
                                                                                groupseenonline,
                                                                            value:
                                                                                everyone,
                                                                            onChanged:
                                                                                (val) {
                                                                              setState(() {
                                                                                groupseenonline = everyone;
                                                                              });
                                                                            })
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          'Report Post, Message, Comments',
                                                                          style: buildTextDesign(
                                                                              10.0,
                                                                              null,
                                                                              null),
                                                                        ),
                                                                        Radio(
                                                                            materialTapTargetSize: MaterialTapTargetSize
                                                                                .shrinkWrap,
                                                                            groupValue:
                                                                                groupseenonline,
                                                                            value:
                                                                                everyone,
                                                                            onChanged:
                                                                                (val) {
                                                                              setState(() {
                                                                                groupseenonline = everyone;
                                                                              });
                                                                            })
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          'Copyrights',
                                                                          style: buildTextDesign(
                                                                              10.0,
                                                                              null,
                                                                              null),
                                                                        ),
                                                                        Radio(
                                                                            materialTapTargetSize: MaterialTapTargetSize
                                                                                .shrinkWrap,
                                                                            groupValue:
                                                                                groupseenonline,
                                                                            value:
                                                                                everyone,
                                                                            onChanged:
                                                                                (val) {
                                                                              setState(() {
                                                                                groupseenonline = everyone;
                                                                              });
                                                                            })
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          'intellectual property defamation',
                                                                          style: buildTextDesign(
                                                                              10.0,
                                                                              null,
                                                                              null),
                                                                        ),
                                                                        Radio(
                                                                            materialTapTargetSize: MaterialTapTargetSize
                                                                                .shrinkWrap,
                                                                            groupValue:
                                                                                groupseenonline,
                                                                            value:
                                                                                everyone,
                                                                            onChanged:
                                                                                (val) {
                                                                              setState(() {
                                                                                groupseenonline = everyone;
                                                                              });
                                                                            })
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      width: double
                                                                          .infinity,
                                                                      child:
                                                                          OutlinedButton(
                                                                        onPressed:
                                                                            () {
                                                                          /*   Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      ); */
                                                                        },
                                                                        style: OutlinedButton.styleFrom(
                                                                            side: const BorderSide(
                                                                              color: Color(0xff0087FF),
                                                                            ),
                                                                            /*  padding: EdgeInsets.symmetric(
                                            horizontal: 40.0, vertical: 20.0), */
                                                                            backgroundColor: primaryColorOfApp,
                                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                        child:
                                                                            Text(
                                                                          "report",
                                                                          style: TextStyle(
                                                                              fontWeight: FontWeight.w500,
                                                                              color: Colors.white,
                                                                              /*  fontSize: 18, */
                                                                              fontFamily: 'Poppins'),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          height *
                                                                              0.1,
                                                                    )
                                                                  ])),
                                                          Positioned.fill(
                                                              top: -36,
                                                              child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: InkWell(
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
                                                                          color: Colors
                                                                              .white,
                                                                          width:
                                                                              2),
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .close,
                                                                        color: Colors
                                                                            .white,
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
                                            title: Text(
                                              'Report this profile',
                                              style: ProfileSelf()
                                                  .buildtextstyle(),
                                            ),
                                            leading: SvgPicture.asset(
                                              'assets/reporticon.svg',
                                              height: 18,
                                              width: 18,
                                            ),
                                            trailing: Iconify(
                                              Eva.arrow_right_fill,
                                              size: 15,
                                              color: Color(0xff333333),
                                            ),
                                          ),
                                          ListTile(
                                            minLeadingWidth: 10,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            onTap: () {
                                              showModalBottomSheet(
                                                  backgroundColor: Colors.white,
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
                                                  builder:
                                                      (BuildContext context) {
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
                                                                      18.0),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    SizedBox(
                                                                      height:
                                                                          height *
                                                                              0.01,
                                                                    ),
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                          color: Color(
                                                                              0xffE2E2E2),
                                                                          border: Border.all(
                                                                              width: 0.5,
                                                                              color: Color(0xffE2E2E2)),
                                                                          borderRadius: BorderRadius.circular(10)),
                                                                      height: 5,
                                                                      width:
                                                                          100,
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          height *
                                                                              0.01,
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          '@Nanncyjain23',
                                                                          style: TextStyle(
                                                                              fontSize: 15,
                                                                              fontFamily: 'Poppins',
                                                                              color: Color(0xff0087FF)),
                                                                        ),
                                                                        Iconify(
                                                                          Bi.patch_check,
                                                                          size:
                                                                              15,
                                                                          color:
                                                                              primaryColorOfApp,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Divider(),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          'are you sure block this profile?',
                                                                          style: buildTextDesign(
                                                                              null,
                                                                              null,
                                                                              FontWeight.bold),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.only(right: 11.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/blockicon.svg',
                                                                            height:
                                                                                18,
                                                                            width:
                                                                                18,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          'why you blocking this profile?',
                                                                          style: buildTextDesign(
                                                                              11.0,
                                                                              null,
                                                                              null),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          'harassment message',
                                                                          style: buildTextDesign(
                                                                              10.0,
                                                                              null,
                                                                              null),
                                                                        ),
                                                                        Radio(
                                                                            materialTapTargetSize: MaterialTapTargetSize
                                                                                .shrinkWrap,
                                                                            groupValue:
                                                                                groupseenonline,
                                                                            value:
                                                                                everyone,
                                                                            onChanged:
                                                                                (val) {
                                                                              setState(() {
                                                                                groupseenonline = everyone;
                                                                              });
                                                                            })
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          'hateful speech',
                                                                          style: buildTextDesign(
                                                                              10.0,
                                                                              null,
                                                                              null),
                                                                        ),
                                                                        Radio(
                                                                            materialTapTargetSize: MaterialTapTargetSize
                                                                                .shrinkWrap,
                                                                            groupValue:
                                                                                groupseenonline,
                                                                            value:
                                                                                everyone,
                                                                            onChanged:
                                                                                (val) {
                                                                              setState(() {
                                                                                groupseenonline = everyone;
                                                                              });
                                                                            })
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          'adult content',
                                                                          style: buildTextDesign(
                                                                              10.0,
                                                                              null,
                                                                              null),
                                                                        ),
                                                                        Radio(
                                                                            materialTapTargetSize: MaterialTapTargetSize
                                                                                .shrinkWrap,
                                                                            groupValue:
                                                                                groupseenonline,
                                                                            value:
                                                                                everyone,
                                                                            onChanged:
                                                                                (val) {
                                                                              setState(() {
                                                                                groupseenonline = everyone;
                                                                              });
                                                                            })
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          'fake account',
                                                                          style: buildTextDesign(
                                                                              10.0,
                                                                              null,
                                                                              null),
                                                                        ),
                                                                        Radio(
                                                                            materialTapTargetSize: MaterialTapTargetSize
                                                                                .shrinkWrap,
                                                                            groupValue:
                                                                                groupseenonline,
                                                                            value:
                                                                                everyone,
                                                                            onChanged:
                                                                                (val) {
                                                                              setState(() {
                                                                                groupseenonline = everyone;
                                                                              });
                                                                            })
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceEvenly,
                                                                      children: [
                                                                        OutlinedButton(
                                                                          onPressed:
                                                                              () {
                                                                            /*   Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      ); */
                                                                          },
                                                                          style: OutlinedButton.styleFrom(
                                                                              minimumSize: Size(120, 37),
                                                                              side: const BorderSide(
                                                                                color: Color(0xff0087FF),
                                                                              ),
                                                                              /*  padding: EdgeInsets.symmetric(
                                            horizontal: 40.0, vertical: 20.0), */
                                                                              backgroundColor: primaryColorOfApp,
                                                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                          child:
                                                                              Text(
                                                                            "Block",
                                                                            style: TextStyle(
                                                                                fontWeight: FontWeight.w500,
                                                                                color: Colors.white,
                                                                                /*  fontSize: 18, */
                                                                                fontFamily: 'Poppins'),
                                                                          ),
                                                                        ),
                                                                        OutlinedButton(
                                                                          onPressed:
                                                                              () {
                                                                            /*   Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      ); */
                                                                          },
                                                                          style: OutlinedButton.styleFrom(
                                                                              side: const BorderSide(
                                                                                color: Color(0xff0087FF),
                                                                              ),
                                                                              /*  padding: EdgeInsets.symmetric(
                                            horizontal: 40.0, vertical: 20.0), */
                                                                              backgroundColor: Colors.white,
                                                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                          child:
                                                                              Text(
                                                                            "Block & report",
                                                                            style: TextStyle(
                                                                                fontWeight: FontWeight.w500,
                                                                                color: primaryColorOfApp,
                                                                                /*  fontSize: 18, */
                                                                                fontFamily: 'Poppins'),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          height *
                                                                              0.1,
                                                                    )
                                                                  ])),
                                                          Positioned.fill(
                                                              top: -36,
                                                              child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: InkWell(
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
                                                                          color: Colors
                                                                              .white,
                                                                          width:
                                                                              2),
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .close,
                                                                        color: Colors
                                                                            .white,
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
                                            title: Text(
                                              'Block this profile',
                                              style: ProfileSelf()
                                                  .buildtextstyle(),
                                            ),
                                            leading: SvgPicture.asset(
                                              'assets/blockicon.svg',
                                              height: 18,
                                              width: 18,
                                            ),
                                            trailing: Iconify(
                                              Eva.arrow_right_fill,
                                              size: 15,
                                              color: Color(0xff333333),
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * 0.05,
                                          )
                                        ],
                                      ),
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
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 2),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
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
                        icon: Icon(Icons.more_horiz)) */

//----------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------

/* OutlinedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.white,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          // <-- SEE HERE
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20.0),
                          ),
                        ),
                        context: context,
                        builder: (BuildContext context) {
                          return DefaultTabController(
                            length: 3,
                            child: StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 18.0),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Color(0xffE2E2E2),
                                                  border: Border.all(
                                                      width: 0.5,
                                                      color: Color(0xffE2E2E2)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 5,
                                              width: 100,
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '@Nanncyjain23',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xff0087FF)),
                                                ),
                                                Iconify(
                                                  Bi.patch_check,
                                                  size: 15,
                                                  color: primaryColorOfApp,
                                                ),
                                              ],
                                            ),
                                            Divider(),
                                            TabBar(
                                              /* controller: tabController, */
                                              indicatorSize:
                                                  TabBarIndicatorSize.tab,
                                              indicatorPadding: EdgeInsets.zero,
                                              labelColor: Color(0xff0087FF),
                                              unselectedLabelColor:
                                                  Color(0xff333333),
                                              tabs: [
                                                Tab(
                                                  height: 20,
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Followers',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Tab(
                                                  height: 20,
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Following',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Tab(
                                                  height: 20,
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Connect',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              /* padding: const EdgeInsets.only(left: 20), */
                                              height: 300,
                                              child: TabBarView(
                                                children: [
                                                  ListView.builder(
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount: 5,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Column(
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  children: [
                                                                    CircleAvatar(
                                                                      radius:
                                                                          20,
                                                                      backgroundImage:
                                                                          NetworkImage(
                                                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                                                    ),
                                                                    SizedBox(
                                                                      width: width *
                                                                          0.01,
                                                                    ),
                                                                    Column(
                                                                      children: [
                                                                        Text(
                                                                          'Rajan Mistry-1 ',
                                                                          style:
                                                                              ProfileSelf().buildtextstyle(),
                                                                        ),
                                                                        Text(
                                                                          '@m.rajan02',
                                                                          style:
                                                                              ProfileSelf().buildtextstyle(),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                                ElevatedButton(
                                                                  onPressed:
                                                                      () {},
                                                                  style: ElevatedButton.styleFrom(
                                                                      elevation: 0,
                                                                      minimumSize: const Size(80, 30),
                                                                      // padding: EdgeInsets.symmetric(
                                                                      //     horizontal: 40.0, vertical: 20.0),
                                                                      backgroundColor: const Color(0xff0087FF),
                                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                  child:
                                                                      const Text(
                                                                    "follow",
                                                                    style: TextStyle(
                                                                        color: Colors.white,
                                                                        /*       fontSize: 18, */
                                                                        fontFamily: 'Poppins'),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        );
                                                      }),
                                                  ListView.builder(
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount: 5,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Column(
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  children: [
                                                                    CircleAvatar(
                                                                      radius:
                                                                          20,
                                                                      backgroundImage:
                                                                          NetworkImage(
                                                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                                                    ),
                                                                    SizedBox(
                                                                      width: width *
                                                                          0.01,
                                                                    ),
                                                                    Column(
                                                                      children: [
                                                                        Text(
                                                                          'Rajan Mistry-1 ',
                                                                          style:
                                                                              ProfileSelf().buildtextstyle(),
                                                                        ),
                                                                        Text(
                                                                          '@m.rajan02',
                                                                          style:
                                                                              ProfileSelf().buildtextstyle(),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                                ElevatedButton(
                                                                  onPressed:
                                                                      () {},
                                                                  style: ElevatedButton.styleFrom(
                                                                      elevation: 0,
                                                                      minimumSize: const Size(80, 30),
                                                                      // padding: EdgeInsets.symmetric(
                                                                      //     horizontal: 40.0, vertical: 20.0),
                                                                      backgroundColor: const Color(0xff0087FF),
                                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                  child:
                                                                      const Text(
                                                                    "follow",
                                                                    style: TextStyle(
                                                                        color: Colors.white,
                                                                        /*       fontSize: 18, */
                                                                        fontFamily: 'Poppins'),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        );
                                                      }),
                                                  ListView.builder(
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount: 5,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Column(
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  children: [
                                                                    CircleAvatar(
                                                                      radius:
                                                                          20,
                                                                      backgroundImage:
                                                                          NetworkImage(
                                                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7OT-crfLTx6zOkBzZBfYY2ijM6KdLwzoThA&usqp=CAU'),
                                                                    ),
                                                                    SizedBox(
                                                                      width: width *
                                                                          0.01,
                                                                    ),
                                                                    Column(
                                                                      children: [
                                                                        Text(
                                                                          'Rajan Mistry-1 ',
                                                                          style:
                                                                              ProfileSelf().buildtextstyle(),
                                                                        ),
                                                                        Text(
                                                                          '@m.rajan02',
                                                                          style:
                                                                              ProfileSelf().buildtextstyle(),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                                ElevatedButton(
                                                                  onPressed:
                                                                      () {},
                                                                  style: ElevatedButton.styleFrom(
                                                                      elevation: 0,
                                                                      minimumSize: const Size(80, 30),
                                                                      // padding: EdgeInsets.symmetric(
                                                                      //     horizontal: 40.0, vertical: 20.0),
                                                                      backgroundColor: const Color(0xff0087FF),
                                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                                                                  child:
                                                                      const Text(
                                                                    "follow",
                                                                    style: TextStyle(
                                                                        color: Colors.white,
                                                                        /*       fontSize: 18, */
                                                                        fontFamily: 'Poppins'),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        );
                                                      }),
                                                ],
                                              ),
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
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 2),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
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
                  },
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(32, 30),
                      elevation: 5,
                      /* padding: EdgeInsets.zero, */
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: const BorderSide(
                        color: Color(0xff0087FF),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 9.0, vertical: 0),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: const Text(
                      "12.5M Followers",
                      style: TextStyle(
                          color: Color(0xff333333),
                          fontSize: 10,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ) */
//-------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------------

/* IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    onPressed: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            // <-- SEE HERE
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20.0),
                            ),
                          ),
                          context: context,
                          builder: (BuildContext context) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Color(0xffE2E2E2),
                                              border: Border.all(
                                                  width: 0.5,
                                                  color: Color(0xffE2E2E2)),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          height: 5,
                                          width: 100,
                                        ),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Notifications',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xff0087FF)),
                                            ),
                                          ],
                                        ),
                                        Divider(),
                                        ListTile(
                                            minLeadingWidth: 10,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            onTap: () {},
                                            title: Text(
                                              'All notifications',
                                              style: ProfileSelf()
                                                  .buildtextstyle(),
                                            ),
                                            leading: SvgPicture.asset(
                                              'assets/setprofile.svg',
                                              height: 18,
                                              width: 18,
                                            ),
                                            trailing: Switch.adaptive(
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                value: value1,
                                                onChanged: (value1) {
                                                  setState(() {
                                                    this.value1 = value1;
                                                  });
                                                })),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        ListTile(
                                            minLeadingWidth: 10,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            onTap: () {},
                                            title: Text(
                                              'Post',
                                              style: ProfileSelf()
                                                  .buildtextstyle(),
                                            ),
                                            leading: SvgPicture.asset(
                                              'assets/posticon.svg',
                                              height: 18,
                                              width: 18,
                                            ),
                                            trailing: Switch.adaptive(
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                value: value1,
                                                onChanged: (value1) {
                                                  setState(() {
                                                    this.value1 = value1;
                                                  });
                                                })),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        ListTile(
                                            minLeadingWidth: 10,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            onTap: () {},
                                            title: Text(
                                              'Story',
                                              style: ProfileSelf()
                                                  .buildtextstyle(),
                                            ),
                                            leading: SvgPicture.asset(
                                              'assets/historyicon.svg',
                                              height: 18,
                                              width: 18,
                                            ),
                                            trailing: Switch.adaptive(
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                value: value1,
                                                onChanged: (value1) {
                                                  setState(() {
                                                    this.value1 = value1;
                                                  });
                                                })),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        ListTile(
                                            minLeadingWidth: 10,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            onTap: () {},
                                            title: Text(
                                              'video',
                                              style: ProfileSelf()
                                                  .buildtextstyle(),
                                            ),
                                            leading: SvgPicture.asset(
                                              'assets/videoicon.svg',
                                              height: 18,
                                              width: 18,
                                            ),
                                            trailing: Switch.adaptive(
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                value: value1,
                                                onChanged: (value1) {
                                                  setState(() {
                                                    this.value1 = value1;
                                                  });
                                                })),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        ListTile(
                                            minLeadingWidth: 10,
                                            visualDensity: const VisualDensity(
                                                vertical: -3),
                                            dense: true,
                                            onTap: () {},
                                            title: Text(
                                              'Live',
                                              style: ProfileSelf()
                                                  .buildtextstyle(),
                                            ),
                                            leading: SvgPicture.asset(
                                              'assets/privacygroup.svg',
                                              height: 18,
                                              width: 18,
                                            ),
                                            trailing: Switch.adaptive(
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                                value: value1,
                                                onChanged: (value1) {
                                                  setState(() {
                                                    this.value1 = value1;
                                                  });
                                                })),
                                        SizedBox(
                                          height: height * 0.03,
                                        ),
                                      ]),
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
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 2),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
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
                    icon: Icon(
                      Icons.notifications,
                      color: Color(0xff0087FF),
                    )) */

                


