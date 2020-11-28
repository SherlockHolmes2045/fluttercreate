import 'package:dec_fluttercreate/utils/size_config.dart';
import 'package:dec_fluttercreate/widgets/mytextformfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [Icon(Icons.info_outline)],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:SizeConfig.blockSizeVertical * 3),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 5,
                    ),
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30.0),
                              child: MyTextFormField(
                                hintText: 'Full name',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
                              padding: const EdgeInsets.symmetric(horizontal: 30.0),
                              child: MyTextFormField(
                                hintText: 'Confirm password',
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
                                      'Create an account',
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
                    SizedBox(
                      height: SizeConfig.blockSizeVertical,
                    ),
                    Text(
                      "By signing up you agree to our"
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Terms ",
                          style: TextStyle(
                            color: Colors.green
                          ),
                        ),
                        Text(
                          "and "
                        ),
                        Text(
                          "Conditions of Use",
                          style: TextStyle(
                              color: Colors.green
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 7,
                    ),
                    Text(
                      "Or sign in with social networks"
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(
                          color: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                            onPressed: (null),
                          child: Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.blue,
                          ),
                        ),
                        RaisedButton(
                          color: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                            onPressed: (null),
                          child: Icon(
                            FontAwesomeIcons.google,
                            //color: Colors.blue,
                          ),
                        ) ,
                        RaisedButton(
                          color: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                            onPressed: (null),
                          child: Icon(
                            FontAwesomeIcons.facebookF,
                            //color: Colors.blue,
                          ),
                        )
                      ],
                    )
                  ],
                )
            )
        ),
      ),
    );
  }
}
