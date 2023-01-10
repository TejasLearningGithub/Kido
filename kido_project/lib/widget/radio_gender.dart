import 'package:flutter/material.dart';
import 'package:kido_project/widget/common_widget.dart';

class StatefulRadioGenderWidget extends StatefulWidget {
  const StatefulRadioGenderWidget({super.key});

  @override
  State<StatefulRadioGenderWidget> createState() =>
      _StatefulRadioGenderWidgetState();
}

enum gender { Male, Female }

class _StatefulRadioGenderWidgetState extends State<StatefulRadioGenderWidget> {
  gender? _character = gender.Male;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          commonName('Gender', true),
          Container(
            width: 140,
            child: RadioListTile<gender>(
              title: const Text('Male'),
              value: gender.Male,
              groupValue: _character,
              onChanged: (gender? value) {
                setState(() {
                  _character = value;
                });
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Male Selected')));
              },
            ),
          ),
          Container(
            width: 150,
            child: RadioListTile<gender>(
              title: const Text('Female'),
              value: gender.Female,
              groupValue: _character,
              onChanged: (gender? value) {
                setState(() {
                  _character = value;
                });
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Female Selected')));
              },
            ),
          ),
        ],
      ),
    );
  }
}
