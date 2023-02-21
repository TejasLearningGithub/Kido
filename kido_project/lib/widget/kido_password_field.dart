import 'package:control_style/control_style.dart';
import 'package:flutter/material.dart';

class KidoTextPasswordfield extends StatefulWidget {
  String hintText;
  Color hintTextColor;
  TextEditingController? myController;
  Color backGroundColor;
  Color textColor;
  TextInputType myType;
  Icon? suffixIcon;
  VoidCallback? myTapping;
  TextEditingController? myWidgetController;
  KidoTextPasswordfield(
      {super.key,
      required this.suffixIcon,
      required this.hintText,
      this.myController,
      required this.textColor,
      required this.backGroundColor,
      required this.hintTextColor,
      required this.myTapping,
      required this.myType,
      required this.myWidgetController});

  @override
  State<KidoTextPasswordfield> createState() => _KidoTextPasswordfieldState();
}

class _KidoTextPasswordfieldState extends State<KidoTextPasswordfield> {
  //var _formKey = GlobalKey<FormState>();
  var txtmsg = '';
  var myColor = Colors.blue;
  var passVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 4, right: 4),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.white,
              border: Border.all(color: myColor, width: 2),
            ),
            child: TextFormField(
              obscureText: passVisible,
              keyboardType: widget.myType,
              onSaved: (newValue) {
                setState(() {
                  if (newValue!.isEmpty) {
                    txtmsg = 'Please Enter Value';
                    myColor = Colors.red;
                  } else {
                    txtmsg = '';
                    myColor = Colors.blue;
                  }
                });
              },
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                //suffixIcon: widget.icon,
                //iconColor: Colors.blue,
                //suffixIconColor: Colors.blue,
                suffixIcon: IconButton(
                  onPressed: () {
                    passVisible = !passVisible;
                    setState(() {});
                  },
                  icon: passVisible
                      ? const Icon(Icons.visibility_off)
                      : const Icon(
                          Icons.visibility,
                        ),
                ),
                // suffixIcon: IconTheme(
                //   data: IconThemeData(color: Colors.blue),
                //   child: widget.icon!,
                // ),

                focusedErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black,
                )),
                hintText: widget.hintText,
                contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                border: DecoratedInputBorder(
                  child: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(color: Colors.red, width: 1),
                  ),
                  shadow: const [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 4,
                        offset: Offset(0, 4))
                  ],
                ),
              ),
              onTap: () {
                widget.myTapping!();
              },
              controller: widget.myWidgetController,
            ),
          ),
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
}
