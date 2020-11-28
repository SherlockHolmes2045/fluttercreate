import 'package:dec_fluttercreate/constants/assets.dart';
import 'package:dec_fluttercreate/utils/size_config.dart';
import 'package:flutter/material.dart';

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
                  Positioned(
                    left: SizeConfig.blockSizeHorizontal * 15,
                    top: SizeConfig.blockSizeVertical * 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: SizeConfig.blockSizeVertical * 4,
                            /*width: SizeConfig.blockSizeHorizontal * 2,*/
                            child: Image.asset(Assets.appLogo)
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical , left: SizeConfig.blockSizeHorizontal * 5),
                          child: Text(
                            "KINGSHOME",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
