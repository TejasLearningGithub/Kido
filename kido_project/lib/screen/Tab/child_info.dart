import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kido_project/widget/common_widget.dart';

class ChildInfo extends StatefulWidget {
  const ChildInfo({super.key});

  @override
  State<ChildInfo> createState() => _ChildInfoState();
}

var stateItems = [
  'Course 1',
  'Course 2',
  'Course 3',
  'Course 4',
  'Course 5',
];
String fixedvalueforstate = 'Course 1';

enum gender { Male, Female }

enum preschoolBool { Yes, No }

DateTime? _selectedDate;

var _dateController = TextEditingController();

class _ChildInfoState extends State<ChildInfo> {
  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();

    var myDay = 0;
    var myYear = 0;
    var myMonth = 0;
    var myController = TextEditingController();
    var myDate = 'Please select date';
    DateTime _dateTime = DateTime.now();
    var _childKey = GlobalKey<FormState>();
    var _firstNameController = TextEditingController();
    var _secondNameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Child Info'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _childKey,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 0, left: 28),
                  child: commonName('First Name', true)),
              commonTextFormField(
                hintText: 'First Name',
                hintTextColor: Colors.black,
                myController: _firstNameController,
                backgroundColor: Colors.blueGrey,
                textColor: Colors.black,
                topPadding: 10,
                bottomPadding: 0,
                rightPadding: 18,
                leftPadding: 20,
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 0, left: 28),
                  child: commonName('Second Name', true)),
              commonTextFormField(
                hintText: 'Second Name',
                hintTextColor: Colors.black,
                myController: _secondNameController,
                backgroundColor: Colors.blueGrey,
                textColor: Colors.black,
                topPadding: 10,
                bottomPadding: 0,
                rightPadding: 18,
                leftPadding: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 0, left: 28),
                child: radioGender(),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 0, left: 28),
                  child: commonName('Date Of Birth', true)),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 0, left: 28),
                child: commonName(
                    'Has Your Child Attended Pre-School before?', false),
              ),
              radioBooleanPreschool(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 0, left: 28),
                child: commonName('Date Of Birth', true),
              ),
              GestureDetector(
                onTap: () {
                  print('=====Tapped=====');
                },
                child: commonTextDropDown(
                    hintText: 'Date of Birth',
                    backgroundColor: Colors.blueGrey,
                    hintTextColor: Colors.black,
                    icon: Icon(Icons.arrow_drop_down),
                    myController: _dateController,
                    textColor: Colors.black,
                    topPadding: 10,
                    bottomPadding: 0,
                    rightPadding: 18,
                    leftPadding: 20,
                    myTapping: () {
                      // print('=====TAPPED=====');
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) => Container(
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
                                  onDateTimeChanged: (DateTime date) {
                                    //dateTime = date;
                                    if (mounted) {
                                      print("Your Selected Date: ${date.day}");
                                      print(
                                          "your Selected Month: ${date.month}");
                                      print(
                                          "Your Selected Year : ${date.year}");
                                      setState(() {
                                        dateTime = date;
                                        myDay = date.day;
                                        myMonth = date.month;
                                        myYear = date.year;
                                        myDate =
                                            ('$myDay' '$myMonth' '$myYear');
                                        myDate =
                                            '$myDay -' ' $myMonth -' ' $myYear';
                                        _dateController.text = myDate;
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
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 0, left: 28),
                child: commonName('Course', true),
              ),
              SizedBox(
                height: 10,
              ),
              categoryDropDown(),
            ],
          ),
        ),
      ),
    );
  }

  gender? _character = gender.Male;

  Widget radioGender() {
    return Row(
      children: <Widget>[
        commonName('Gender', true),
        SizedBox(
          width: 140,
          child: RadioListTile<gender>(
            title: const Text('Male'),
            value: gender.Male,
            groupValue: _character,
            onChanged: (gender? value) {
              setState(() {
                _character = value;
              });
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Male Selected')));
            },
          ),
        ),
        SizedBox(
          width: 150,
          child: RadioListTile<gender>(
            title: const Text('Female'),
            value: gender.Female,
            groupValue: _character,
            onChanged: (gender? value) {
              setState(() {
                _character = value;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Female Selected')));
            },
          ),
        ),
      ],
    );
  }

  preschoolBool? _myBool = preschoolBool.No;
  Widget radioBooleanPreschool() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 140,
          child: RadioListTile<preschoolBool>(
            title: const Text('Yes'),
            value: preschoolBool.Yes,
            groupValue: _myBool,
            onChanged: (preschoolBool? value) {
              setState(() {
                _myBool = value;
              });
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Yes Selected')));
            },
          ),
        ),
        SizedBox(
          width: 150,
          child: RadioListTile<preschoolBool>(
            title: const Text('No'),
            value: preschoolBool.No,
            groupValue: _myBool,
            onChanged: (preschoolBool? value) {
              setState(() {
                _myBool = value;
              });
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('No Selected')));
            },
          ),
        ),
      ],
    );
  }

  Widget categoryDropDown() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 14.0,
            right: 14.0,
          ),
          child: Container(
            width: 410,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  isExpanded: true,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: stateItems.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      fixedvalueforstate = newValue!;
                    });
                  },
                  value: fixedvalueforstate,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget commonTextDropDown({
    required String hintText,
    required Color hintTextColor,
    required TextEditingController myController,
    required Color backgroundColor,
    required Color textColor,
    required double topPadding,
    required double bottomPadding,
    required double rightPadding,
    required double leftPadding,
    required Icon icon,
    required VoidCallback myTapping,
  }) {
    GoogleFonts.roboto();

    return Padding(
      padding: EdgeInsets.only(
          top: topPadding,
          bottom: bottomPadding,
          left: leftPadding,
          right: rightPadding),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'please enter $hintText';
          } else {
            return null;
          }
        },
        style: TextStyle(
          color: textColor,
        ),
        controller: myController,
        decoration: InputDecoration(
            filled: true,
            fillColor: backgroundColor,
            hintText: hintText,
            hintStyle: TextStyle(color: hintTextColor),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.black,
                )),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.blue),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
            suffixIcon: icon),
        keyboardType: TextInputType.none,
        onTap: () {
          myTapping();
        },
      ),
    );
  }

  _mySelectDate() async {
    DateTime? pickedDate = await showModalBottomSheet<DateTime>(
      context: context,
      builder: (context) {
        DateTime tempPickedDate = _selectedDate!;
        return Container(
          height: 250,
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CupertinoButton(
                      child: Text('Cancel'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    CupertinoButton(
                      child: Text('Done'),
                      onPressed: () {
                        Navigator.of(context).pop(tempPickedDate);
                      },
                    ),
                  ],
                ),
              ),
              Divider(
                height: 0,
                thickness: 1,
              ),
              Expanded(
                child: Container(
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    onDateTimeChanged: (DateTime dateTime) {
                      tempPickedDate = dateTime;
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
        _dateController.text = pickedDate.toString();
      });
    }
  }
}
