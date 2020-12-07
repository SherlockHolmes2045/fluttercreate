import 'dart:async';

import 'package:dec_fluttercreate/constants/assets.dart';
import 'package:dec_fluttercreate/utils/size_config.dart';
import 'package:dec_fluttercreate/widgets/LightBox.dart';
import 'package:dec_fluttercreate/widgets/custom_popup_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeDetail extends StatefulWidget {
  @override
  _HomeDetailState createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetail>{

  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            actions: [Icon(Icons.share, color: Colors.white)],
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: SizeConfig.screenHeight / 2,
                  child: Stack(children: [
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
                            fontWeight: FontWeight.bold, fontSize: 24.0),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.blockSizeVertical * 42.75,
                      left: SizeConfig.blockSizeHorizontal * 4,
                      child: Text(
                        "Apartments",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24.0),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.blockSizeVertical * 45.75,
                      left: SizeConfig.blockSizeHorizontal * 4,
                      child: Text(
                        "By",
                        style: TextStyle(color: Colors.grey, fontSize: 16.0),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.blockSizeVertical * 45.75,
                      left: SizeConfig.blockSizeHorizontal * 8.5,
                      child: Text(
                        "Kalpataru group",
                        style: TextStyle(color: Colors.green, fontSize: 16.0),
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 4,
                      top: SizeConfig.blockSizeVertical),
                  child: Text(
                    "£1.86 Cr - 2.85 Cr",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
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
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockSizeHorizontal * 9),
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
                          SizedBox(height: SizeConfig.blockSizeVertical),
                          Text(
                            "3 Bedrooms",
                            style: TextStyle(color: Colors.grey),
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
                          SizedBox(height: SizeConfig.blockSizeVertical),
                          Text(
                            "3 Bathrooms",
                            style: TextStyle(color: Colors.grey),
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
                          SizedBox(height: SizeConfig.blockSizeVertical),
                          Text(
                            "1 Garage",
                            style: TextStyle(color: Colors.grey),
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
                  padding: EdgeInsets.only(
                      top: SizeConfig.blockSizeVertical * 3,
                      left: SizeConfig.blockSizeHorizontal * 2.5,
                      right: SizeConfig.blockSizeHorizontal * 2.5),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17.0,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: SizeConfig.blockSizeVertical * 4,
                        left: SizeConfig.blockSizeHorizontal * 4),
                    child: Text(
                      "Photo Gallery",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    )),
                Padding(
                  padding: EdgeInsets.only(
                      top: SizeConfig.blockSizeVertical * 2,
                      left: SizeConfig.blockSizeHorizontal * 4),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Container(
                            height: SizeConfig.blockSizeVertical * 17,
                            width: SizeConfig.blockSizeHorizontal * 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                    image: AssetImage(Assets.images[0]),
                                    fit: BoxFit.cover)),
                          ),
                          onTap: (){
                            Navigator.push(
                                context,
                                CustomRoute(
                                    builder: (BuildContext context){
                                      return LightBox(
                                        Assets.images,
                                        initialIndex: 0,
                                      );
                                    },
                                    dismissible: false
                                ));
                          },
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal * 3,
                        ),
                        GestureDetector(
                          child: Container(
                            height: SizeConfig.blockSizeVertical * 17,
                            width: SizeConfig.blockSizeHorizontal * 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                    image: AssetImage(Assets.images[1]),
                                    fit: BoxFit.cover),),
                          ),
                          onTap: (){
                            Navigator.push(
                                context,
                                CustomRoute(
                                builder: (BuildContext context){
                                  return LightBox(
                                    Assets.images,
                                    initialIndex: 1,
                                  );
                                },
                                  dismissible: false
                                ));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 2,
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: SizeConfig.blockSizeVertical * 2,
                        left: SizeConfig.blockSizeHorizontal * 4),
                    child: Text(
                      "Amenities",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    )),
                Padding(
                  padding: EdgeInsets.only(
                      top: SizeConfig.blockSizeVertical * 1.5,
                      left: SizeConfig.blockSizeHorizontal * 7),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.wifi,
                              color: Colors.grey
                            ),
                            Text(
                              "Wi-Fi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal * 5,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.directions_car_sharp,
                              color: Colors.grey
                            ),
                            Text(
                              "Car parking",
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal * 5,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.tv,
                              color: Colors.grey
                            ),
                            Text(
                              "TV",
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal * 5,
                        ),
                        Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.fan,
                              color: Colors.grey
                            ),
                            Text(
                              "Air Conditioner",
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal * 5,
                        ),
                        Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.swimmingPool,
                              color: Colors.grey
                            ),
                            Text(
                              "Swimming Pool",
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal * 5,
                        ),
                        Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.desktop,
                              color: Colors.grey
                            ),
                            Text(
                              "Computer",
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal * 5,
                        ),
                        Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.paperPlane,
                              color: Colors.grey
                            ),
                            Text(
                              "Computer",
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: SizeConfig.blockSizeVertical * 2,
                        left: SizeConfig.blockSizeHorizontal * 4),
                    child: Text(
                      "Location",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    )
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: SizeConfig.blockSizeVertical * 30,
                    width: SizeConfig.screenWidth,
                    child: GoogleMap(
                      mapType: MapType.hybrid,
                      initialCameraPosition: _kGooglePlex,
                      onMapCreated: (GoogleMapController controller) {
                        _controller.complete(controller);
                      },
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
