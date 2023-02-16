import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:kido_project/widget/common_widget.dart';
import 'package:kido_project/widget/radio_gender.dart';

class ExpandableChild extends StatefulWidget {
  const ExpandableChild({super.key});

  @override
  State<ExpandableChild> createState() => _ExpandableChildState();
}

class _ExpandableChildState extends State<ExpandableChild> {
  List<DropdownMenuItem<String>> get dropdownItemsForCourse {
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

  final _firstNameController = TextEditingController();
  final _secondNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Column(
        children: [
          ScrollOnExpand(
            //scrollOnCollapse: true,
            //scrollOnExpand: true,
            child: ExpandablePanel(
              // header: Container(
              //   decoration: BoxDecoration(
              //     color: Colors.blue,
              //     borderRadius: BorderRadius.circular(40),
              //     boxShadow: [
              //       BoxShadow(blurRadius: 15),
              //     ],
              //   ),
              //   child: Row(
              //     children: [
              //       Text('Child Information'),
              //     ],
              //   ),
              // ),
              theme: const ExpandableThemeData(
                hasIcon: true,
                expandIcon: Icons.arrow_downward_rounded,
                collapseIcon: Icons.abc,
                // tapHeaderToExpand: true,

                // collapseIcon: Icons.forward,
                // expandIcon: Icons.keyboard_arrow_down_sharp,
                //expandIcon: Icons.arrow_downward,
                //collapseIcon: Icons.arrow_forward_ios,
                //hasIcon: false,

                tapBodyToCollapse: false,
                tapBodyToExpand: true,
              ),
              collapsed: Container(
                width: double.maxFinite,
                height: 50,
                //decoration: BoxDecoration(color: Colors.blue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Child Information:',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 23,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              expanded: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 449,
                  width: 450,
                  //color: Colors.blue.shade100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 0,
                          //spreadRadius: 10,
                          color: Colors.grey,
                        ),
                      ],
                      color: const Color.fromARGB(255, 221, 221, 221)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Child Information:',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_sharp,
                            size: 40,
                          ),
                        ],
                      ),
                      commonName('First Name', false),
                      KidoTextFormfield(
                        icon: null,
                        hintText: 'First Name',
                        hintTextColor: Colors.black,
                        myController: _firstNameController,
                        backGroundColor:
                            const Color.fromARGB(255, 221, 221, 221),
                        textColor: Colors.black,
                        myWidgetController: _firstNameController,
                        myType: TextInputType.name,
                        myTapping: () {},
                        //   icon: Icon(
                        //     Icons.abc,
                        //     color: Colors.black,
                        //   ),
                      ),
                      commonName('Second Name', false),
                      KidoTextFormfield(
                        icon: null,
                        hintText: 'Second Name',
                        hintTextColor: Colors.black,
                        myController: _secondNameController,
                        backGroundColor:
                            const Color.fromARGB(255, 221, 221, 221),
                        textColor: Colors.black,
                        myWidgetController: _firstNameController,
                        myType: TextInputType.name,
                        myTapping: () {},
                      ),
                      const StatefulRadioGenderWidget(),
                      commonName('Date Of Birth', false),
                      DateSelector(),
                      commonName('Course Interested In', false),
                      MyCustomDropdown(
                          selectedValue: '',
                          myDropdownItem: dropdownItemsForCourse,
                          myText: 'Select Course')
                    ],
                  ),
                ),
              ),
              builder: (_, collapsed, expanded) {
                return Expandable(
                  collapsed: collapsed,
                  expanded: expanded,
                  theme: const ExpandableThemeData(
                    crossFadePoint: 0,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
