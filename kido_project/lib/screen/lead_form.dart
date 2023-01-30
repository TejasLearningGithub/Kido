import 'package:flutter/material.dart';
import 'package:kido_project/widget/common_widget.dart';
import 'package:kido_project/widget/radio_gender.dart';

class LeadForm extends StatefulWidget {
  const LeadForm({super.key});

  @override
  State<LeadForm> createState() => _LeadFormState();
}

class _LeadFormState extends State<LeadForm> {
  var _leadFormGlobalKey = GlobalKey<FormState>();
  var _firstNameController = TextEditingController();
  var _secondNameController = TextEditingController();
  var _parentName = TextEditingController();
  var _parentContactNumber = TextEditingController();
  var _parentAlternateContactNumber = TextEditingController();
  var myDropDownItem = <DropdownMenuItem<String>>[
    DropdownMenuItem(child: Text('Select Mode'), value: ''),
    DropdownMenuItem(child: Text("Mode - 1"), value: "mode1"),
    DropdownMenuItem(child: Text("Mode - 2"), value: "mode2"),
    DropdownMenuItem(child: Text("Mode - 3"), value: "mode3"),
    DropdownMenuItem(child: Text("Mode - 4"), value: "mode4"),
  ];

  var myDropDownItemForCourse = <DropdownMenuItem<String>>[
    DropdownMenuItem(child: Text('Select Course'), value: ''),
    DropdownMenuItem(child: Text("Course - 1"), value: "c1"),
    DropdownMenuItem(child: Text("Course - 2"), value: "c2"),
    DropdownMenuItem(child: Text("Course - 3"), value: "c3"),
    DropdownMenuItem(child: Text("Course - 4"), value: "c4"),
  ];
  var selectedValue = '';
  var selectedValueForCourse = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: const Text('Lead Form'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _leadFormGlobalKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 10.0),
                child: Row(
                  children: [
                    Text(
                      '3137',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 16.0),
                child: commonName(
                  'Academic Year',
                  true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyCustomDropdown(
                    selectedValue: selectedValue,
                    myDropdownItem: myDropDownItem,
                    myText: 'Please Select Mode'),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 8.0,
                      left: 13,
                    ),
                    child: Text(
                      'Child Information:',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 15,
                ),
                child: commonName('First Name', true),
              ),
              commonTextFormField(
                  backgroundColor: Colors.blueGrey,
                  hintText: 'First Name',
                  hintTextColor: Colors.black,
                  myController: _firstNameController,
                  myInputType: TextInputType.name,
                  textColor: Colors.black,
                  leftPadding: 8,
                  rightPadding: 8,
                  topPadding: 8,
                  bottomPadding: 8),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 15,
                ),
                child: commonName('Second Name', true),
              ),
              commonTextFormField(
                  backgroundColor: Colors.blueGrey,
                  hintText: 'Second Name',
                  hintTextColor: Colors.black,
                  myController: _secondNameController,
                  myInputType: TextInputType.name,
                  textColor: Colors.black,
                  leftPadding: 8,
                  rightPadding: 8,
                  topPadding: 8,
                  bottomPadding: 8),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: StatefulRadioGenderWidget(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 3,
                  left: 15,
                ),
                child: commonName('Date Of Birth', true),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: DateSelector(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 7,
                  left: 15,
                ),
                child: commonName('Course Interested In', true),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyCustomDropdown(
                    selectedValue: selectedValueForCourse,
                    myDropdownItem: myDropDownItemForCourse,
                    myText: 'Please Select Mode'),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 8.0,
                      left: 13,
                    ),
                    child: Text(
                      'Family Information:',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 15,
                ),
                child: commonName('Parent Name', true),
              ),
              commonTextFormField(
                  backgroundColor: Colors.blueGrey,
                  hintText: 'Parent Name',
                  hintTextColor: Colors.black,
                  myController: _parentName,
                  myInputType: TextInputType.name,
                  textColor: Colors.black,
                  leftPadding: 8,
                  rightPadding: 8,
                  topPadding: 8,
                  bottomPadding: 8),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 15,
                ),
                child: commonName('Parent Contact Number', true),
              ),
              commonTextFormField(
                  backgroundColor: Colors.blueGrey,
                  hintText: 'Parent Contact Number',
                  hintTextColor: Colors.black,
                  myController: _parentContactNumber,
                  myInputType: TextInputType.name,
                  textColor: Colors.black,
                  leftPadding: 8,
                  rightPadding: 8,
                  topPadding: 8,
                  bottomPadding: 8),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 15,
                ),
                child: commonName('Parent Alternate Contact Number', true),
              ),
              commonTextFormField(
                  backgroundColor: Colors.blueGrey,
                  hintText: 'Parent Alternate Contact Number',
                  hintTextColor: Colors.black,
                  myController: _parentAlternateContactNumber,
                  myInputType: TextInputType.name,
                  textColor: Colors.black,
                  leftPadding: 8,
                  rightPadding: 8,
                  topPadding: 8,
                  bottomPadding: 8),
              SizedBox(
                height: 20,
              ),
              commonSubmitButton(
                borderRadiusSize: 20,
                buttonBackgroundColor: Colors.blue,
                globalKey: _leadFormGlobalKey,
                height: 55,
                width: 350,
                myPress: () {
                  if (_leadFormGlobalKey.currentState!.validate()) {}
                },
                textbtn: 'save',
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
