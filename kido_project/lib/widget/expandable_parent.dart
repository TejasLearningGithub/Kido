import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:kido_project/widget/common_widget.dart';

class ExpandableParent extends StatefulWidget {
  const ExpandableParent({super.key});

  @override
  State<ExpandableParent> createState() => _ExpandableParentState();
}

class _ExpandableParentState extends State<ExpandableParent> {
  var _parentNameController = TextEditingController();
  var _parentContactController = TextEditingController();
  var _parentAlternateContactController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Column(
        children: [
          ScrollOnExpand(
            child: ExpandablePanel(
              theme: ExpandableThemeData(
                //expandIcon: Icons.arrow_downward,
                //collapseIcon: Icons.arrow_forward_ios,
                //hasIcon: false,
                tapBodyToCollapse: true,
                tapBodyToExpand: true,
              ),
              collapsed: Container(
                width: double.maxFinite,
                height: 50,
                // decoration: BoxDecoration(color: Colors.blue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Family Information:',
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
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        const Icon(
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
                  height: 350,
                  width: 430,
                  //color: Colors.blue.shade100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0,
                          //spreadRadius: 10,
                          color: Colors.grey,
                        ),
                      ],
                      color: Color.fromARGB(255, 221, 221, 221)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Family Information:',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_sharp,
                            size: 40,
                          )
                        ],
                      ),
                      commonName('Parent Name', false),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: KidoTextFormfield(
                            icon: null,
                            myTapping: () {},
                            hintText: 'First Name',
                            hintTextColor: Colors.black,
                            myController: _parentNameController,
                            backGroundColor: Color.fromARGB(255, 221, 221, 221),
                            textColor: Colors.black,
                            myWidgetController: _parentNameController,
                            myType: TextInputType.name),
                      ),
                      commonName('Parent Contact Number', false),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: KidoTextFormfield(
                            icon: null,
                            myTapping: () {},
                            hintText: 'Contact Number',
                            hintTextColor: Colors.black,
                            myController: _parentNameController,
                            backGroundColor: Color.fromARGB(255, 221, 221, 221),
                            textColor: Colors.black,
                            myWidgetController: _parentContactController,
                            myType: TextInputType.name),
                      ),
                      commonName('Parent Alternate Contact Number', false),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: KidoTextFormfield(
                            icon: null,
                            myTapping: () {},
                            hintText: 'Parent Alternate Contact number',
                            hintTextColor: Colors.black,
                            myController: _parentNameController,
                            backGroundColor: Color.fromARGB(255, 221, 221, 221),
                            textColor: Colors.black,
                            myWidgetController: _parentNameController,
                            myType: TextInputType.name),
                      ),
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
