import 'package:flutter/material.dart';
import 'package:kido_project/widget/common_widget.dart';
import 'package:kido_project/widget/radio_gender.dart';

class LeadForm extends StatefulWidget {
  const LeadForm({super.key});

  @override
  State<LeadForm> createState() => _LeadFormState();
}

class _LeadFormState extends State<LeadForm> {
  final _leadFormGlobalKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _secondNameController = TextEditingController();
  final _parentName = TextEditingController();
  final _parentContactNumber = TextEditingController();
  final _parentAlternateContactNumber = TextEditingController();
  var myDropDownItem = <DropdownMenuItem<String>>[
    const DropdownMenuItem(value: '', child: Text('Select Mode')),
    const DropdownMenuItem(value: "mode1", child: Text("Mode - 1")),
    const DropdownMenuItem(value: "mode2", child: Text("Mode - 2")),
    const DropdownMenuItem(value: "mode3", child: Text("Mode - 3")),
    const DropdownMenuItem(value: "mode4", child: Text("Mode - 4")),
  ];

  var myDropDownItemForCourse = <DropdownMenuItem<String>>[
    const DropdownMenuItem(value: '', child: Text('Select Course')),
    const DropdownMenuItem(value: "c1", child: Text("Course - 1")),
    const DropdownMenuItem(value: "c2", child: Text("Course - 2")),
    const DropdownMenuItem(value: "c3", child: Text("Course - 3")),
    const DropdownMenuItem(value: "c4", child: Text("Course - 4")),
  ];
  var selectedValue = '';
  var selectedValueForCourse = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
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
                  children: const [
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
                padding: const EdgeInsets.only(top: 10.0, left: 16.0),
                child: commonName(
                  'Academic Year',
                  true,
                ),
              ),
              Row(
                children: const [
                  Padding(
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
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: StatefulRadioGenderWidget(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 3,
                  left: 15,
                ),
                child: commonName('Date Of Birth', true),
              ),
              const Padding(
                padding: EdgeInsets.all(0),
                child: DateSelector(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 7,
                  left: 15,
                ),
                child: commonName('Course Interested In', true),
              ),
              Row(
                children: const [
                  Padding(
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
              const SizedBox(
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
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
