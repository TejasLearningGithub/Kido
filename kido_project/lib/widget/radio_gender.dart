import 'package:flutter/material.dart';

class RadioGender extends StatefulWidget {
  const RadioGender({super.key});

  @override
  State<RadioGender> createState() => _RadioGenderState();
}

enum gender { male, female }

var gValue = gender.male;

class _RadioGenderState extends State<RadioGender> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Row(
        children: [
          SizedBox(
            height: 100,
          ),
          Text('Gender'),
          Row(
            children: [
              Text('Male'),
              Radio(
                //title: Text("Male"),
                value: "male",
                groupValue: gValue,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
            ],
          ),
          Row(
            children: [
              Text('Female'),
              Radio(
                //title: Text("Male"),
                value: "female",
                groupValue: gValue,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
