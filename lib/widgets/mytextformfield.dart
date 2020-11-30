import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyTextFormField extends StatefulWidget{

  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isEmail;
  final bool isPassword;
  final Map icons;
  final Color color;
  final TextStyle hintStyle;

  MyTextFormField({
    this.hintText,
    this.validator,
    this.onSaved,
    this.isEmail = false,
    this.isPassword = false,
    this.icons,
    this.color,
    this.hintStyle
  });

  @override
  State<StatefulWidget> createState() => MyTextFormFieldState();

}
class MyTextFormFieldState extends State<MyTextFormField> {

  bool isVisible = false;
  var passwordIcons = [FaIcon(FontAwesomeIcons.eye),FaIcon(FontAwesomeIcons.eyeSlash)];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: widget.isPassword ? IconButton(icon: passwordIcons[isVisible ? 1 : 0], onPressed: (){
            setState(() {
              isVisible = !isVisible;
            });
          }) : null,
          //prefixIcon: widget.icons["prefix"] != "" ? Icon(widget.icons["prefix"]) : null,
          hintText: widget.hintText,
          hintStyle: widget.hintStyle,
          contentPadding: EdgeInsets.all(20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          fillColor: widget.color?? Colors.grey[300],
        ),
        obscureText: widget.isPassword ? !isVisible: widget.isPassword,
        validator: widget.validator,
        onSaved: widget.onSaved,
        keyboardType: widget.isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}