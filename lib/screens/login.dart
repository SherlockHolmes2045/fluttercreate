import 'package:dec_fluttercreate/constants/assets.dart';
import 'package:dec_fluttercreate/utils/size_config.dart';
import 'package:dec_fluttercreate/widgets/mytextformfield.dart';
import 'package:dec_fluttercreate/widgets/slide_route_transition.dart';
import 'package:flutter/material.dart';

import 'Register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top:SizeConfig.blockSizeVertical*7),
                  child: Image.asset(Assets.appLogo),
                ),
                Text(
                  "KINGSHOME",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0
                  ),
                ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical * 12,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
                        child: MyTextFormField(
                          hintText: 'Email',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: MyTextFormField(
                          hintText: 'Password',
                          isPassword: true,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal:SizeConfig.blockSizeHorizontal/15,vertical: SizeConfig.blockSizeVertical*2),
                          child: Container(
                            width: 315.0,
                            height: 52.0,
                            child: RaisedButton(
                              color: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              onPressed: () {
                                if (_formKey.currentState.validate()) {
                                  _formKey.currentState.save();
                                }
                              },

                              child: Text(
                                'Sign In',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                      ),
                    ],
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:SizeConfig.blockSizeVertical*3),
                      child: InkWell(
                        child: Text(
                          "Not register yet ?",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 15.0
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,SlideRightRoute(page: Register()));
                        },
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal * 2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:SizeConfig.blockSizeVertical*3),
                      child: InkWell(
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 15.0
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
