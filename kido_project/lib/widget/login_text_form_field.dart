import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kido_project/utils/constants.dart';

class LoginTextFormField extends StatefulWidget {
  final String? hintText;
  final bool obscureText;
  final Color? hintTextColor;
  IconButton? eyeIcon;
  int? maxLines;
  final Color? backGroundColor;

  //final String text;
  //final Color? textColor;
  final TextEditingController textEditingController;
  LoginTextFormField({
    super.key,
    this.hintText,
    required this.obscureText,
    this.hintTextColor,
    required this.textEditingController,
    this.eyeIcon,
    this.maxLines,
    this.backGroundColor,
  });

  @override
  State<LoginTextFormField> createState() => _LoginTextFormFieldState();
}

class _LoginTextFormFieldState extends State<LoginTextFormField> {
  bool passVisible = false;
  var txtmsg = '';
  var myColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          maxLines: widget.maxLines,
          controller: widget.textEditingController,
          decoration: InputDecoration(
            filled: true,
            fillColor: widget.backGroundColor,

            //contentPadding: EdgeInsets.all(20),
            hintText: widget.hintText,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(circularBorderRadius),
                borderSide: BorderSide(color: blueColor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(circularBorderRadius),
                borderSide: BorderSide(color: blueColor)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(circularBorderRadius),
                borderSide: BorderSide(color: redColor)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(circularBorderRadius),
                borderSide: BorderSide(color: blackColor)),
            suffixIcon: widget.eyeIcon,
          ),
          obscureText: widget.obscureText,
          onSaved: (newValue) {
            setState(() {
              if (newValue == null || newValue == '') {
                txtmsg = 'Please Enter ${widget.hintText}';
                log('======$txtmsg');
                myColor = Colors.red;
              } else {
                txtmsg = '';
                myColor = Colors.blue;
                //print('======$txtmsg');
              }
            });
          },
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            txtmsg,
            style: const TextStyle(
              color: Colors.red,
            ),
          ),
        )
      ],
    );
  }

  toggleIcon() {
    setState(() {
      widget.eyeIcon = widget.eyeIcon;
    });
  }
}
