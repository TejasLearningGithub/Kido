import 'package:flutter/material.dart';
import 'package:kido_project/widget/common_widget.dart';
import 'package:kido_project/widget/expandable_child.dart';
import 'package:kido_project/widget/expandable_parent.dart';

class AddLead extends StatefulWidget {
  const AddLead({super.key});

  @override
  State<AddLead> createState() => _AddLeadState();
}

class _AddLeadState extends State<AddLead> {
  List<DropdownMenuItem<String>> get dropdownItemsForCommunication {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(value: "mode1", child: Text("Mode - 1")),
       DropdownMenuItem(value: "mode2", child: Text("Mode - 2")),
       DropdownMenuItem(value: "mode3", child: Text("Mode - 3")),
       DropdownMenuItem(value: "mode4", child: Text("Mode - 4")),
       DropdownMenuItem(value: "mode5", child: Text("Mode - 5")),
       DropdownMenuItem(value: "mode6", child: Text("Mode - 6")),
       DropdownMenuItem(value: "mode7", child: Text("Mode - 7")),
       DropdownMenuItem(value: "mode8", child: Text("Mode - 8")),
    ];
    return menuItems;
  }

  final _addLeadKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(225, 221, 221, 221),
      appBar: AppBar(
        title: const Text(
          'Add Leads',
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _addLeadKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'LD003171',
                    style: commonMediumFonts.copyWith(
                      color: Colors.blue,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 136,
                    width: 500,
                    //color: Color.fromARGB(255, 221, 221, 221),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 221, 221, 221),
                      boxShadow: const [
                         BoxShadow(blurRadius: 3),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 15,
                      ),
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: commonName('Academic Year', true)),
                          MyCustomDropdown(
                            selectedValue: '',
                            myText: 'Communication',
                            myDropdownItem: dropdownItemsForCommunication,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const ExpandableChild(),
                const SizedBox(
                  height: 10,
                ),
                const ExpandableParent(),
                const SizedBox(
                  height: 25,
                ),
                commonSubmitButton(
                  width: 340,
                  height: 70,
                  textbtn: 'Save',
                  buttonBackgroundColor: Colors.deepOrangeAccent.shade400,
                  borderRadiusSize: 15,
                  globalKey: _addLeadKey,
                  myPress: () {
                    _addLeadKey.currentState!.save();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
