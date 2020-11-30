import 'dart:ui';

import 'package:dec_fluttercreate/constants/assets.dart';
import 'package:dec_fluttercreate/utils/size_config.dart';
import 'package:dec_fluttercreate/widgets/mytextformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  Positioned(
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
                  ),
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
                  )
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending projects",
                    style: TextStyle(
                      fontSize: 16.0
                    ),
                  ),
                  Text(
                    "See more",
                    style: TextStyle(
                        fontSize: 16.0
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:
                Row(
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
                  ],
                )
              ,
            )
          ],
        ),
      ),
    ));
  }
}


