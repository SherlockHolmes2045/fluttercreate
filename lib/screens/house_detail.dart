import 'package:dec_fluttercreate/constants/assets.dart';
import 'package:dec_fluttercreate/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeDetail extends StatefulWidget {
  @override
  _HomeDetailState createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetail> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
          actions: [
            Icon(
              Icons.share,
              color: Colors.white
            )
          ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: SizeConfig.screenHeight/2,
                child: Stack(
                  children: [
                    Image.asset(
                      Assets.images[2],
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: SizeConfig.blockSizeVertical * 36,
                      left: SizeConfig.blockSizeHorizontal * 80,
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.green,
                            size: 35.0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.blockSizeVertical * 40,
                      left: SizeConfig.blockSizeHorizontal * 4,
                      child: Text(
                        "Kalpataru Bliss",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                          fontSize: 24.0
                        ),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.blockSizeVertical * 42.75,
                      left: SizeConfig.blockSizeHorizontal * 4,
                      child: Text(
                        "Apartments",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                          fontSize: 24.0
                        ),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.blockSizeVertical * 45.75,
                      left: SizeConfig.blockSizeHorizontal * 4,
                      child: Text(
                        "By",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0
                        ),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.blockSizeVertical * 45.75,
                      left: SizeConfig.blockSizeHorizontal * 8.5,
                      child: Text(
                        "Kalpataru group",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 16.0
                        ),
                      ),
                    ),
                  ]
                ),
              ),
              Padding(
                padding:EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 4,top: SizeConfig.blockSizeVertical),
                child: Text(
                  "£1.86 Cr - 2.85 Cr",
                  style: TextStyle(
                      fontSize: 25.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 10.0),
                child: Divider(
                  thickness: 1.5,
                  indent: 15.0,
                  endIndent: 15.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.bed,
                          size: 30.0,
                          color: Colors.green,
                        ),
                        Text(
                          "3 Bedrooms",
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.bath,
                          color: Colors.green,
                          size: 30.0,
                        ),
                        Text(
                          "3 Bathrooms",
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.car,
                          color: Colors.green,
                          size: 30.0,
                        ),
                        Text(
                          "1 Garage",
                          style: TextStyle(
                              color: Colors.grey
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Divider(
                  thickness: 1.5,
                  indent: 15.0,
                  endIndent: 15.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 3, left: SizeConfig.blockSizeHorizontal * 2.5, right: SizeConfig.blockSizeHorizontal * 2.5),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
