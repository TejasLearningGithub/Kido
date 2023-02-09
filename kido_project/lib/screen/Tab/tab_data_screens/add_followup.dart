import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kido_project/widget/check_box.dart';
import 'package:kido_project/widget/common_widget.dart';

class AddFollowup extends StatefulWidget {
  const AddFollowup({super.key});

  @override
  State<AddFollowup> createState() => _AddFollowupState();
}

enum FollowUp { yes, no }

class _AddFollowupState extends State<AddFollowup> {
  final _myFollowUpKey = GlobalKey<FormState>();

  final _dateController = TextEditingController();
  final _timeController = TextEditingController();
  var myDay = 0;
  var myYear = 0;
  var myMonth = 0;
  var myHour = 0;
  var myMinute = 0;
  var mySecond = 0;
  //var myController = TextEditingController();
  var myDate = 'Please select date';
  String selectedValue = "";

  var myTime = '';
  Duration initialTimer = const Duration();
  var time;

  List<DropdownMenuItem<String>> get dropdownItemsForCommunication {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "", child: Text("Select Item")),
      const DropdownMenuItem(value: "mode1", child: Text("Mode - 1")),
      const DropdownMenuItem(value: "mode2", child: Text("Mode - 2")),
      const DropdownMenuItem(value: "mode3", child: Text("Mode - 3")),
      const DropdownMenuItem(value: "mode4", child: Text("Mode - 4")),
      const DropdownMenuItem(value: "mode5", child: Text("Mode - 5")),
      const DropdownMenuItem(value: "mode6", child: Text("Mode - 6")),
      const DropdownMenuItem(value: "mode7", child: Text("Mode - 7")),
      const DropdownMenuItem(value: "mode8", child: Text("Mode - 8")),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItemsForStatus {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "status1", child: Text("Status - 1")),
      const DropdownMenuItem(value: "status2", child: Text("Status - 2")),
      const DropdownMenuItem(value: "status3", child: Text("Status - 3")),
      const DropdownMenuItem(value: "status4", child: Text("Status - 4")),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItemsForSubStatus {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "substatus1", child: Text("SubStatus - 1")),
      const DropdownMenuItem(value: "substatus2", child: Text("SubStatus - 2")),
      const DropdownMenuItem(value: "substatus3", child: Text("SubStatus - 3")),
      const DropdownMenuItem(value: "substatus4", child: Text("SubStatus - 4")),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItemsForAction {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "act1", child: Text("Action - 1")),
      const DropdownMenuItem(value: "act2", child: Text("Action - 2")),
      const DropdownMenuItem(value: "act3", child: Text("Action - 3")),
      const DropdownMenuItem(value: "act4", child: Text("Action - 4")),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItemsForlead {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "lead1", child: Text("Lead - 1")),
      const DropdownMenuItem(value: "lead2", child: Text("Lead - 2")),
      const DropdownMenuItem(value: "lead3", child: Text("Lead - 3")),
      const DropdownMenuItem(value: "lead4", child: Text("Lead - 4")),
    ];
    return menuItems;
  }

  DateTime dateTime = DateTime.now();
  var txtmsgfirst = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 221, 221),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text('Add Follow up'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _myFollowUpKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 12, bottom: 14),
                  child: Text(
                    'LD003171',
                    style: commonMediumFonts.copyWith(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                ),
                commonName('Communication Mode', true),
                MyCustomDropdown(
                  selectedValue: '',
                  myText: 'Communication',
                  myDropdownItem: dropdownItemsForCommunication,
                ),
                const SizedBox(
                  height: 20,
                ),
                commonName('Select Status', true),
                MyCustomDropdown(
                  selectedValue: '',
                  myText: 'Status',
                  myDropdownItem: dropdownItemsForStatus,
                ),
                const SizedBox(
                  height: 20,
                ),
                commonName('Select Sub Status', true),
                MyCustomDropdown(
                  selectedValue: '',
                  myText: 'Sub Status',
                  myDropdownItem: dropdownItemsForSubStatus,
                ),
                const SizedBox(
                  height: 20,
                ),
                commonName('Action Planned/Taken', true),
                MyCustomDropdown(
                  myText: 'Action Planned/Taken',
                  selectedValue: '',
                  myDropdownItem: dropdownItemsForAction,
                ),
                const SizedBox(
                  height: 20,
                ),
                commonName('Lead/Inquiry Stage', true),
                MyCustomDropdown(
                  selectedValue: '',
                  myText: 'Mode/Action',
                  myDropdownItem: dropdownItemsForlead,
                ),
                const SizedBox(
                  height: 20,
                ),
                commonName('Note', true),
                const MyMultiLine(),
                const MyCheckboxFirst(),
                const SizedBox(
                  height: 15,
                ),
                commonName('Follow Up Date', true),
                const SizedBox(
                  height: 15,
                ),
                DateSelector(),
                const SizedBox(
                  height: 20,
                ),
                commonName('Follow up Time', true),
                timeSelector(context, dateTime),
                const SizedBox(
                  height: 50,
                ),
                commonSubmitButton(
                  width: 360,
                  height: 70,
                  textbtn: 'Submit',
                  buttonBackgroundColor: Colors.blue,
                  borderRadiusSize: 15,
                  globalKey: _myFollowUpKey,
                  myPress: () {
                    //if (_myFollowUpKey.currentState!.validate()) {
                    _myFollowUpKey.currentState!.save();
                    print('=====Done=====');
                    // }
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  var communicationItems = [];

  FollowUp status = FollowUp.yes;
  Widget radioFollowUp() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 140,
          child: RadioListTile<FollowUp>(
            title: const Text('Yes'),
            value: FollowUp.yes,
            groupValue: status,
            onChanged: (FollowUp? value) {
              setState(() {
                status = value!;
              });
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Yes Selected')));
            },
          ),
        ),
        SizedBox(
          width: 150,
          child: RadioListTile<FollowUp>(
            title: const Text('No'),
            value: FollowUp.no,
            groupValue: status,
            onChanged: (FollowUp? value) {
              setState(() {
                status = value!;
              });
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('No Selected')));
            },
          ),
        ),
      ],
    );
  }

  TimeOfDay? _selectedTime;
  DateTime? tempDate;
  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay? timePicked = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (context, child) {
          return MediaQuery(
              data:
                  MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
              child: child!);
        });
    if (timePicked != null)
      setState(() {
        _selectedTime = timePicked;
      });

    tempDate = DateFormat("hh:mm").parse(_selectedTime!.hour.toString() +
        ":" +
        _selectedTime!.minute.toString());
    var dateFormat = DateFormat("h:mm a"); // you can change the format here
    print(dateFormat.format(tempDate!));
    setState(() {
      _timeController.text = dateFormat.format(tempDate!);
    });
  }

  Widget timeSelector(BuildContext context, DateTime dateTime) {
    return KidoTextFormfield(
        myType: TextInputType.none,
        hintText: 'Select Time',
        backGroundColor: Colors.white,
        hintTextColor: Colors.black,
        icon: const Icon(Icons.keyboard_arrow_down),
        myController: _timeController,
        textColor: Colors.black,
        myWidgetController: _timeController,
        myTapping: () {
          _selectTime(context);
        });
  }
}
