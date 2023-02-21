import 'package:flutter/material.dart';

class MyCheckboxFirst extends StatefulWidget {
  const MyCheckboxFirst({super.key});

  @override
  State<MyCheckboxFirst> createState() => _MyCheckboxFirstState();
}

class _MyCheckboxFirstState extends State<MyCheckboxFirst> {
  bool _value = false;
  bool _val = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 100,
          width: 130,
          child: CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text('No Follow Up'),
            autofocus: false,
            activeColor: Colors.blue,
            checkColor: Colors.white,
            selected: _value,
            value: _value,
            onChanged: (bool? value) {
              setState(() {
                _value = value!;
              });
            },
          ),
        ),
        SizedBox(
          height: 100,
          width: 150,
          child: CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text('Follow Up Some Day'),
            autofocus: false,
            activeColor: Colors.blue,
            checkColor: Colors.white,
            selected: _val,
            value: _val,
            onChanged: (bool? value) {
              setState(() {
                _val = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}
