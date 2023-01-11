import 'package:flutter/material.dart';

var stateItems = [
  'State 1',
  'State 2',
  'State 3',
  'State 4',
  'State 5',
];
String fixedvalueforstate = 'State 1';

class CommonWidgetDropDown extends StatefulWidget {
  const CommonWidgetDropDown({super.key});

  @override
  State<CommonWidgetDropDown> createState() => _CommonWidgetDropDownState();
}

class _CommonWidgetDropDownState extends State<CommonWidgetDropDown> {
  @override
  Widget build(BuildContext context) {
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
}
