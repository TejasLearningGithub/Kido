import 'dart:developer';

import 'package:control_style/control_style.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

TextStyle leadIdStyle = GoogleFonts.roboto(
  fontSize: 20,
  color: Colors.white,
);

TextStyle leadNameStyle = GoogleFonts.roboto(
  fontSize: 17,
  color: Colors.white,
);

TextStyle leadChildStyle = GoogleFonts.roboto(
  color: Colors.amber.shade300,
  fontSize: 13,
  fontWeight: FontWeight.bold,
);

TextStyle leadChildNameStyle = GoogleFonts.roboto(
  color: Colors.white,
  fontSize: 13,
  fontWeight: FontWeight.bold,
);

TextStyle leadGenderStyle = GoogleFonts.roboto(
  color: Colors.white,
  fontSize: 13,
  fontWeight: FontWeight.bold,
);

TextStyle birthDiffDateStyle = GoogleFonts.roboto(
  color: Colors.white,
  fontSize: 13,
  fontWeight: FontWeight.bold,
);

TextStyle callBackFollowUpStyle = GoogleFonts.roboto(
  color: Colors.white,
  fontSize: 13,
);
TextStyle redColorStatus = GoogleFonts.roboto(
  color: Colors.red,
  fontSize: 10,
  fontWeight: FontWeight.bold,
);
AppBar appBarLeads = AppBar(
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: const [
      Text(
        'LEADS',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      Icon(Icons.search),
    ],
  ),
);

TextStyle commonSmallFonts = GoogleFonts.roboto(
  color: Colors.white,
  fontSize: 13,
);

TextStyle commonMediumFonts = GoogleFonts.roboto(
  color: Colors.white,
  fontSize: 17,
);

TextStyle commonLargeFonts = GoogleFonts.roboto(
  color: Colors.white,
  fontSize: 20,
);

commonName(String textDisp, bool isRequired) {
  GoogleFonts.roboto();

  return Row(
    children: [
      Text(textDisp),
      Text(
        isRequired ? ' *' : '',
        style: TextStyle(
          color: isRequired ? Colors.red : null,
        ),
      )
    ],
  );
}

commonTextFormField(
    {required String hintText,
    required Color hintTextColor,
    required TextEditingController myController,
    required Color backgroundColor,
    required Color textColor,
    required double topPadding,
    required double bottomPadding,
    required double rightPadding,
    required double leftPadding,
    required TextInputType myInputType}) {
  GoogleFonts.roboto();

  return Padding(
    padding: EdgeInsets.only(
        top: topPadding,
        bottom: bottomPadding,
        left: leftPadding,
        right: rightPadding),
    child: TextFormField(
      keyboardType: myInputType,
      validator: (value) {
        if (value!.isEmpty) {
          return 'please enter $hintText';
        } else {
          return null;
        }
      },
      style: TextStyle(color: textColor),
      controller: myController,
      decoration: InputDecoration(
        border: DecoratedInputBorder(
          child: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
        filled: true,
        fillColor: backgroundColor,
        hintText: hintText,
        hintStyle: TextStyle(color: hintTextColor),
      ),
    ),
  );
}

commonSubmitButton({
  required double width,
  required double height,
  required String textbtn,
  required Color buttonBackgroundColor,
  required double borderRadiusSize,
  required GlobalKey<FormState> globalKey,
  required VoidCallback myPress,
}) {
  return GestureDetector(
    onTap: myPress,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: buttonBackgroundColor,
        borderRadius: BorderRadius.circular(borderRadiusSize),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          textbtn,
          style: commonMediumFonts.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}

enum GGender { male, female }

Row dashBoardNotificationList(BuildContext context) {
  return Row(
    children: [
      Expanded(
        child: SizedBox(
          height: 200,
          width: double.maxFinite,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 14,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'LD003171',
                          style: commonMediumFonts.copyWith(
                            color: const Color(0xFF00356A),
                            fontStyle: FontStyle.italic,
                            fontSize: 19,
                          ),
                        ),
                        Text(
                          '1234567890',
                          style: commonMediumFonts.copyWith(
                            color: const Color(0xFF00356A),
                            fontStyle: FontStyle.italic,
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 18, bottom: 18, left: 18, right: 5),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Renu Pathak',
                            style: commonMediumFonts.copyWith(
                              color: const Color(0xFF00356A),
                              fontSize: 19,
                            ),
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'To call back/Follow up',
                            style: commonMediumFonts.copyWith(
                              color: const Color(0xFF00356A),
                              fontSize: 19,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    ],
  );
}

Widget myMultiLineTextFormField({required TextEditingController myController}) {
  return TextFormField(
    controller: myController,
    maxLines: 5,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(color: Colors.blue),
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: Colors.blue,
          )),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(
          color: Colors.red,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(
          color: Colors.red,
        ),
      ),
    ),
    validator: (value) {
      if (value!.isEmpty) {
        return 'please enter note';
      } else {
        return '';
      }
    },
  );
}

class MyCustomDropdown extends StatefulWidget {
  String? selectedValue;
  //final selectedValue;
  String? myText;
  List<DropdownMenuItem<String>> myDropdownItem;

  MyCustomDropdown({
    super.key,
    required this.selectedValue,
    required this.myDropdownItem,
    required this.myText,
  });

  @override
  State<MyCustomDropdown> createState() => _MyCustomDropdownState();
}

class _MyCustomDropdownState extends State<MyCustomDropdown> {
  var myDropDownErrorText = '';
  var txtmsg = '';
  Color myColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: myColor, width: 2),
            borderRadius: BorderRadius.circular(50),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                  offset: Offset(0, 4), color: Colors.black, blurRadius: 4),
            ],
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
            child: DropdownButtonFormField(
              decoration: const InputDecoration(border: InputBorder.none),
              onChanged: (val) {},
              hint: Text(
                widget.myText!,
                style: const TextStyle(fontSize: 16),
              ),
              //validator: (value) {},
              items: widget.myDropdownItem,
              onSaved: (newValue) {
                setState(() {
                  if (newValue == null || newValue == '') {
                    txtmsg = 'Please select value';
                    log('======$txtmsg');
                    myColor = Colors.red;
                  } else {
                    txtmsg = '';
                    myColor = Colors.blue;
                    //print('======$txtmsg');
                  }
                });
              },
              icon: const Icon(Icons.keyboard_arrow_down),
              iconEnabledColor: Colors.blue,
              style: const TextStyle(color: Colors.green, fontSize: 20),
              dropdownColor: Colors.blue,
              isExpanded: true,
            ),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            txtmsg,
            style: const TextStyle(
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}

class KidoTextFormfield extends StatefulWidget {
  String hintText;
  Color hintTextColor;
  TextEditingController? myController;
  Color backGroundColor;
  Color textColor;
  TextInputType myType;
  Icon? icon;
  VoidCallback? myTapping;
  TextEditingController? myWidgetController;
  KidoTextFormfield(
      {super.key,
      required this.icon,
      required this.hintText,
      this.myController,
      required this.textColor,
      required this.backGroundColor,
      required this.hintTextColor,
      required this.myTapping,
      required this.myType,
      required this.myWidgetController});

  @override
  State<KidoTextFormfield> createState() => _KidoTextFormfieldState();
}

class _KidoTextFormfieldState extends State<KidoTextFormfield> {
  var txtmsg = '';
  var myColor = Colors.blue;
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
                suffixIcon: widget.icon,
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

class DateSelector extends StatefulWidget {
  const DateSelector({
    super.key,
  });

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  var myDay = 0;
  var myYear = 0;
  var myMonth = 0;
  var myHour = 0;
  var myMinute = 0;
  var mySecond = 0;
  DateTime? dateTime;
  var myController = TextEditingController();
  var myDate = 'select date';
  @override
  Widget build(BuildContext context) {
    return KidoTextFormfield(
      myType: TextInputType.none,
      myWidgetController: myController,
      hintText: 'date of birth',
      backGroundColor: const Color.fromARGB(255, 221, 221, 221),
      hintTextColor: Colors.black,
      icon: const Icon(
        Icons.keyboard_arrow_down,
        color: Colors.blue,
      ),
      myController: myController,
      textColor: Colors.black,
      myTapping: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) => SizedBox(
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    minimumYear: 1990,
                    maximumYear: 2220,
                    initialDateTime: DateTime.now(),
                    onDateTimeChanged: (DateTime date) {
                      if (mounted) {
                        //print("Your Selected Date: ${date.day}");
                        log("your Selected Month: ${date.month}");
                        log("Your Selected Year : ${date.year}");
                        setState(() {
                          dateTime = dateTime;
                          myDay = date.day;
                          myMonth = date.month;
                          myYear = date.year;
                          myDate = ('$myDay' '$myMonth' '$myYear');
                          myDate = '$myDay -' ' $myMonth -' ' $myYear';
                          myController.text = myDate;
                        });
                      }
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'close bottom sheet',
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class MyMultiLine extends StatefulWidget {
  const MyMultiLine({super.key});

  @override
  State<MyMultiLine> createState() => _MyMultiLineState();
}

class _MyMultiLineState extends State<MyMultiLine> {
  var txtmsg = '';
  var myColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(color: myColor, width: 2)),
            child: TextFormField(
              maxLines: 5,
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
              decoration: InputDecoration(
                hintText: 'Please Enter Description',
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
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 19.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              txtmsg,
              style: const TextStyle(
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
