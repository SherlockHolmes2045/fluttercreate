import 'dart:ui';

import 'package:dec_fluttercreate/constants/assets.dart';
import 'package:dec_fluttercreate/screens/house_detail.dart';
import 'package:dec_fluttercreate/utils/size_config.dart';
import 'package:dec_fluttercreate/widgets/mytextformfield.dart';
import 'package:dec_fluttercreate/widgets/scale_route_transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  var _controller;


  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight / 2.5,
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      Flexible(
                        child: PageView(
                          children: [
                            Image.asset(Assets.images[0], fit: BoxFit.cover),
                            Image.asset(Assets.images[1], fit: BoxFit.cover),
                            Image.asset(Assets.images[2], fit: BoxFit.cover),
                            Image.asset(Assets.images[3], fit: BoxFit.cover),
                          ],
                        ),
                      )
                    ],
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Positioned(
                    left: SizeConfig.blockSizeHorizontal * 28,
                    top: SizeConfig.blockSizeVertical * 3.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /*Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),*/
                        Container(
                            height: SizeConfig.blockSizeVertical * 3.5,
                            /*width: SizeConfig.blockSizeHorizontal * 2,*/
                            child: Image.asset(Assets.appLogo)),
                        Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical,
                              left: SizeConfig.blockSizeHorizontal * 1.5),
                          child: Text(
                            "KINGSHOME",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        )
                      ],
                    ),
                  ),
                  /*Positioned(
                    top: SizeConfig.blockSizeVertical * 8,
                    left: SizeConfig.blockSizeHorizontal ,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        width: SizeConfig.blockSizeHorizontal * 95,
                        height: SizeConfig.blockSizeVertical * 8,
                        child: MyTextFormField(
                          color: Colors.white,
                          hintText: "Search...",
                          hintStyle: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                      ),
                    ),
                  ),*/
                  /*Positioned(
                    top: SizeConfig.blockSizeVertical * 35,
                    left: SizeConfig.blockSizeHorizontal * 4,
                    child: Container(
                      width: SizeConfig.screenWidth,
                      height: SizeConfig.blockSizeVertical,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Card(
                            color: Colors.lightGreenAccent,
                            elevation: 10.0,
                            child: Container(
                              height: SizeConfig.blockSizeVertical * 15,
                              width: SizeConfig.blockSizeHorizontal *50,
                            ),
                          ),
                          Card(
                            color: Colors.lightGreenAccent,
                            elevation: 10.0,
                            child: Container(
                              height: SizeConfig.blockSizeVertical * 15,
                              width: SizeConfig.blockSizeHorizontal *50,
                            ),
                          ),
                          Card(
                            color: Colors.lightGreenAccent,
                            elevation: 10.0,
                            child: Container(
                              height: SizeConfig.blockSizeVertical * 15,
                              width: SizeConfig.blockSizeHorizontal *50,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),*/

                  Positioned(
                    top: SizeConfig.blockSizeVertical * 35,
                    left: SizeConfig.blockSizeHorizontal * 4,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            color: Colors.lightGreenAccent,
                            elevation: 10.0,
                            child: Container(
                              //height: SizeConfig.blockSizeVertical * 15,
                              width: SizeConfig.blockSizeHorizontal *50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 1.5, left: SizeConfig.blockSizeHorizontal * 4),
                                    child: CircleAvatar(
                                      radius: 12.0,
                                      child: Text(
                                        "1",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10.0
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 1.5, left: SizeConfig.blockSizeHorizontal * 8),
                                child: Text(
                                  "Independant",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 8),
                                child: Text(
                                  "House",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 8),
                                child: Text(
                                  "Freedom & privacy",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0
                                  ),
                                ),
                              )
                            ],
                          ),

                          Card(
                            color: Colors.lightGreen,
                            elevation: 10.0,
                            child: Container(
                              //height: SizeConfig.blockSizeVertical * 15,
                              width: SizeConfig.blockSizeHorizontal *50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 1.5, left: SizeConfig.blockSizeHorizontal * 4),
                                    child: CircleAvatar(
                                      radius: 12.0,
                                      child: Text(
                                        "2",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.0
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 1.5, left: SizeConfig.blockSizeHorizontal * 8),
                                child: Text(
                                  "Independant",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 8),
                                child: Text(
                                  "House",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 8),
                                child: Text(
                                  "Freedom & privacy",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.lightGreen,
                        elevation: 10.0,
                        child: Container(
                          height: SizeConfig.blockSizeVertical * 15,
                          width: SizeConfig.blockSizeHorizontal *50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 1.5, left: SizeConfig.blockSizeHorizontal * 4),
                                child: CircleAvatar(
                                  radius: 12.0,
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10.0
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 1.5, left: SizeConfig.blockSizeHorizontal * 8),
                                child: Text(
                                  "Independant",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 8),
                                child: Text(
                                  "House",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 8),
                                child: Text(
                                  "Freedom & privacy",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0
                                  ),
                                ),
                              )
                            ],
                          ),
                          Card(
                            color: Colors.lightGreenAccent,
                            elevation: 10.0,
                            child: Container(
                             // height: SizeConfig.blockSizeVertical * 15,
                              width: SizeConfig.blockSizeHorizontal *50,
                            ),
                          )
                        ],
                      ),
                      Card(
                        color: Colors.lightGreenAccent,
                        elevation: 10.0,
                        child: Container(
                          height: SizeConfig.blockSizeVertical * 15,
                          width: SizeConfig.blockSizeHorizontal *50,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: SizeConfig.blockSizeVertical * 2,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Trending projects",
                          style: TextStyle(
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal * 28,
                        ),
                        Text(
                          "See more",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.lightGreenAccent,
                            fontWeight: FontWeight.bold
                          ),
                          overflow: TextOverflow.clip,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 1.5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              color: Colors.lightGreenAccent,
                              elevation: 3.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: SizeConfig.blockSizeVertical * 23,
                                width: SizeConfig.blockSizeHorizontal * 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      Assets.images[0]
                                    ),
                                    fit: BoxFit.cover
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left : SizeConfig.blockSizeHorizontal,top: SizeConfig.blockSizeVertical),
                                      child: Text(
                                          "Pride Park Royale",
                                        style: TextStyle(
                                          fontSize: 20.0
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left : SizeConfig.blockSizeHorizontal),
                                      child: Text(
                                        "£1.86 Cr - 2.85 Cr",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: SizeConfig.blockSizeHorizontal * 30,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 7.0),
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context,ScaleRoute(page: HomeDetail()));
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.lightGreenAccent,
                                      child: Center(
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              color: Colors.lightGreenAccent,
                              elevation: 3.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: SizeConfig.blockSizeVertical * 23,
                                width: SizeConfig.blockSizeHorizontal * 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          Assets.images[1]
                                      ),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left : SizeConfig.blockSizeHorizontal,top: SizeConfig.blockSizeVertical),
                                      child: Text(
                                        "Pride Park Royale",
                                        style: TextStyle(
                                            fontSize: 20.0
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left : SizeConfig.blockSizeHorizontal),
                                      child: Text(
                                        "£1.86 Cr - 2.85 Cr",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: SizeConfig.blockSizeHorizontal * 30,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 7.0),
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context,ScaleRoute(page: HomeDetail()));
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.lightGreenAccent,
                                      child: Center(
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              color: Colors.lightGreenAccent,
                              elevation: 3.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: SizeConfig.blockSizeVertical * 23,
                                width: SizeConfig.blockSizeHorizontal * 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          Assets.images[2]
                                      ),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left : SizeConfig.blockSizeHorizontal,top: SizeConfig.blockSizeVertical),
                                      child: Text(
                                        "Pride Park Royale",
                                        style: TextStyle(
                                            fontSize: 20.0
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left : SizeConfig.blockSizeHorizontal),
                                      child: Text(
                                        "£1.86 Cr - 2.85 Cr",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: SizeConfig.blockSizeHorizontal * 30,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 7.0),
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context,ScaleRoute(page: HomeDetail()));
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.lightGreenAccent,
                                      child: Center(
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ,
              ),
            )
          ],
        ),
      ),
    ));
  }
}


