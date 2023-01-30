import 'package:flutter/material.dart';
import 'package:kido_project/widget/common_widget.dart';
import 'package:kido_project/widget/drop_down_common.dart';
import 'package:kido_project/widget/radio_gender.dart';

class EnqueryChildInfo extends StatefulWidget {
  const EnqueryChildInfo({super.key});

  @override
  State<EnqueryChildInfo> createState() => _EnqueryChildInfoState();
}

class _EnqueryChildInfoState extends State<EnqueryChildInfo> {
  final _firstNameController = TextEditingController();
  final _secondNameController = TextEditingController();
  final _enqueryGolbalKey = GlobalKey<FormState>();
  var selectedValueForCategory = '';
  var selectedValueForCourse = '';

  List<DropdownMenuItem<String>> get dropdownItemsForCategory {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text('Select Category'), value: ''),
      DropdownMenuItem(child: Text("Category - 1"), value: "cat1"),
      DropdownMenuItem(child: Text("Category - 2"), value: "cat2"),
      DropdownMenuItem(child: Text("Category - 3"), value: "cat3"),
      DropdownMenuItem(child: Text("Category - 4"), value: "cat4"),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItemsForCourse {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text('Select Course'), value: ''),
      DropdownMenuItem(child: Text("Course - 1"), value: "cou1"),
      DropdownMenuItem(child: Text("Course - 2"), value: "cou2"),
      DropdownMenuItem(child: Text("Course - 3"), value: "cou3"),
      DropdownMenuItem(child: Text("Course - 4"), value: "cou4"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 53, 107, 100),
        title: Row(
          children: const [
            Icon(
              Icons.arrow_back,
              size: 30,
            ),
            SizedBox(
              width: 34,
            ),
            Text('Enquiry Form')
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _enqueryGolbalKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 14,
                  top: 18,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: commonName('First Name', true),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              commonTextFormField(
                  textColor: Colors.black,
                  hintTextColor: Colors.black,
                  hintText: 'First Name',
                  myController: _firstNameController,
                  backgroundColor: Colors.white,
                  bottomPadding: 12,
                  topPadding: 12,
                  rightPadding: 12,
                  leftPadding: 12,
                  myInputType: TextInputType.name),
              const SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 14,
                  top: 8,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: commonName('Second Name', true),
                ),
              ),
              commonTextFormField(
                  textColor: Colors.black,
                  hintTextColor: Colors.black,
                  hintText: 'Second Name',
                  myController: _secondNameController,
                  backgroundColor: Colors.white,
                  bottomPadding: 12,
                  topPadding: 12,
                  leftPadding: 12,
                  rightPadding: 12,
                  myInputType: TextInputType.name),
              const SizedBox(
                height: 3,
              ),
              //commonSubmitButton(361, 57, 'Submit')
              const Padding(
                padding: EdgeInsets.only(left: 14.0, top: 0),
                child: StatefulRadioGenderWidget(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 14,
                  top: 0,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: commonName('Date Of Birth', true),
                ),
              ),
              DateSelector(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 14,
                  top: 8,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: commonName('Category', true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyCustomDropdown(
                  selectedValue: selectedValueForCategory,
                  myDropdownItem: dropdownItemsForCategory,
                  myText: 'Preschool',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 14,
                  top: 8,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: commonName('Course', true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyCustomDropdown(
                  selectedValue: selectedValueForCourse,
                  myDropdownItem: dropdownItemsForCourse,
                  myText: 'Course',
                ),
              ),

              SizedBox(
                height: 170,
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: commonSubmitButton(
                      width: 110,
                      height: 60,
                      textbtn: 'Previous',
                      buttonBackgroundColor: Colors.grey,
                      borderRadiusSize: 20,
                      globalKey: _enqueryGolbalKey,
                      myPress: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: commonSubmitButton(
                      width: 210,
                      height: 60,
                      textbtn: 'Next',
                      buttonBackgroundColor: Colors.blue,
                      borderRadiusSize: 20,
                      globalKey: _enqueryGolbalKey,
                      myPress: () {},
                    ),
                  ),
                  SizedBox(
                    height: 170,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
